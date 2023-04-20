module Slugify

export slugify

replacement = "_"

function slugify(str::AbstractString) :: String
    split_str = split(str)
    slugified_str = join(split_str, replacement)
    return slugified_str
end

function slugify(str::AbstractString, replacement::String) :: String
    split_str = split(str)
    slugified_str = join(split_str, replacement)
    return slugified_str
end

end
