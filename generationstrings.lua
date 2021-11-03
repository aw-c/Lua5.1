function GenerateString(how)
    local cache = ""
    for i=1,how do
        cache = cache.."\n"
        for d=1,160 do
            cache = cache..string.char(math.random(10,126))
        end
    end
    return cache
end
