# LLMiddleware

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://robertfeldt.github.io/LLMiddleware.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://robertfeldt.github.io/LLMiddleware.jl/dev/)
[![Build Status](https://github.com/robertfeldt/LLMiddleware.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/robertfeldt/LLMiddleware.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/robertfeldt/LLMiddleware.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/robertfeldt/LLMiddleware.jl)

This Julia package can help create tools that build on and use Large-Language Models (LLMs), such as GPT-4, to better understand humans and help them complete tasks by using the natural language processing, reasoning, and the (dare we say, but at least approximate or low-level) general intelligence these models show. Basically it provides:

- abstractions over different LLM backends, as well as 
- building blocks to implement cognitive architectures that use LLMs to achieve high-level goals and tasks.

We have been playing with different ways to prompt and use LLMs for some time now and will use this library to collect cleaner code that can be useful in building what we call task-specific Hybrid Language-model-driven Cognitive Architectures (HLCA). Our particular application area is software engineering and software testing, but we hope this library can provide general abstractions that are useful also for other tasks. 

[Here are the slides of a keynote](https://www.cse.chalmers.se/~feldt/presentations/20230420_feldt_NEXTA_keynote_next_after_conversational_test_automation.pdf) we held at the 6th International Workshop on the Next Level of Test Automation (NEXTA), co-located with ICST 2023 (International Conference on Software Testing), that shows some of the ideas and vision behind LLMiddleware.