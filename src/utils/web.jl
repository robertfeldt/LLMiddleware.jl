function body_of_web_page(url)
    res = HTTP.get(url)
    return String(res.body)
end

function parse_html_of_web_page(url; suppresswarnings = true)
    # This often gives many warnings so mute them
    if suppresswarnings
        @suppress begin
            return parsehtml(body_of_web_page(url))
        end
    else
        parsehtml(body_of_web_page(url))
    end
end