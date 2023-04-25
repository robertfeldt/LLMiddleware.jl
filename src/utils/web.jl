function body_of_page(url::AbstractString)
    res = HTTP.get(url)
    return String(res.body)
end

function parse_html_of_page(url; suppresswarnings = true)
    # This often gives many warnings so suppress them by default
    if suppresswarnings
        @suppress begin
            return parsehtml(body_of_page(url))
        end
    else
        parsehtml(body_of_page(url))
    end
end

function links_of_page(doc::EzXML.Document)
    links = findall("//a[@href and normalize-space(text()) != '']", doc)
    map(l -> (strip(nodecontent(l)), l["href"]), links)
end

function text_of_page(doc::EzXML.Document; jointexts = true)
    txt = findall("//text()[not(ancestor::script)][not(ancestor::style)][not(ancestor::noscript)][not(ancestor::form)]", doc)
    txts = map(l -> strip(nodecontent(l)), txt)
    if jointexts
        return join(txts, " ")
    else
        return txts
    end
end

links_of_page(url::AbstractString) = links_of_page(parse_html_of_page(url))
text_of_page(url::AbstractString) = text_of_page(parse_html_of_page(url))

function text_and_links_of_page(url::AbstractString)
    doc = parse_html_of_page(url)
    return text_of_page(doc), links_of_page(doc)
end