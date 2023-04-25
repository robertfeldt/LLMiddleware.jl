using LLMiddleware
using Documenter

DocMeta.setdocmeta!(LLMiddleware, :DocTestSetup, :(using LLMiddleware); recursive=true)

makedocs(;
    modules=[LLMiddleware],
    authors="Robert Feldt",
    repo="https://github.com/robertfeldt/LLMiddleware.jl/blob/{commit}{path}#{line}",
    sitename="LLMiddleware.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://robertfeldt.github.io/LLMiddleware.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/robertfeldt/LLMiddleware.jl",
    devbranch="main",
)
