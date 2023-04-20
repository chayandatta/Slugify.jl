using Slugify: slugify
using Test

@testset "slugify.jl" begin
    @test slugify("Hello World") == "Hello_World"
    @test slugify("Hello World", "_") == "Hello_World"
    @test slugify("Hello World", "+") == "Hello+World"
    @test slugify("Hello Darkness My Old Friend") == "Hello_Darkness_My_Old_Friend"
    @test slugify("foo bar baz", "_") == "foo_bar_baz"
end
