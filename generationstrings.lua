function string.Generate(how)
    local cache = ""
    local char = string.char
    local rand = math.random
    for i=1,how do
        cache = cache.."\n"
        for d=1,160 do
            cache = cache..char(rand(10,126))
        end
    end
    return cache
end
