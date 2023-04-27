module Slugify
using JSON
export slugify

replacement = "-"

function slugify(str::AbstractString) :: String
    split_str = split(replaceUnicode(str))
    slugified_str = join(split_str, replacement)
    return slugified_str
end

function slugify(str::AbstractString, replacement::String) :: String
    split_str = split(replaceUnicode(str))
    slugified_str = join(split_str, replacement)
    return slugified_str
end

function replaceUnicode(str::String) :: String
    char_map_path = joinpath(@__DIR__, "..", "config", "char_map.json")
    char_map_dict = JSON.parsefile(char_map_path)
    str = reduce((s, kv) -> replace(s, kv[1] => kv[2]), char_map_dict, init=str)
    return str
end

end
