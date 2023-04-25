using Test
using EzXML
using LLMiddleware: body_of_page, parse_html_of_page, links_of_page, text_of_page

@testset "utils/web" begin
    url = "https://www.google.se"

    @testset "body_of_page" begin
        body = body_of_page(url)
        @test body isa AbstractString
    end

    @testset "parse_html_of_page" begin
        doc = parse_html_of_page(url)
        @test doc isa EzXML.Document
    end

    doc = parse_html_of_page(url)

    @testset "links_of_page (document)" begin
        links = links_of_page(doc)
        @test links isa Vector
        @test length(links) > 0
        @test links[1] isa Tuple{<:AbstractString, <:AbstractString}
        @test any(t -> t[1] == "Logga in", links)
    end

    @testset "text_of_page (document)" begin
        texts = text_of_page(doc; jointexts = false)
        @test texts isa Vector
        @test length(texts) > 0
        @test any(line -> occursin("Logga in", line), texts)
    end
end
