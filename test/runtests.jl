using Slugify
using Test

@testset "Slugify.jl" begin
    @test slugify("Hello World") == "Hello-World"
    @test slugify("Hello World", "_") == "Hello_World"
    @test slugify("Hello World", "+") == "Hello+World"
    @test slugify("Hello Darkness My Old Friend") == "Hello-Darkness-My-Old-Friend"
    @test slugify("foo bar baz", "_") == "foo_bar_baz"
    @test slugify("we ♥ Julia") == "we-love-Julia"
    @test slugify("we ♥ Julia","_") == "we_love_Julia"
end
