module Slugify

export slugify

replacement = "_"

function slugify(str::AbstractString) :: String
    split_str = split(str)
    res = join(split_str, replacement)
    return res
end

function slugify(str::AbstractString, replacement::String) :: String
    split_str = split(str)
    res = join(split_str, replacement)
    return res
end

end
