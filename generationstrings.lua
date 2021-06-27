function GenerateString(how)
    print("Generation was started at "..os.time(),os.date("%H:%M:%S - %d/%m/%Y" , os.time()))
    local cache = ""
    for i=1,how do
        cache = cache.."\n"
        for d=1,160 do
            cache = cache..string.char(math.random(10,126))
        end
    end
    print("Generation was end at "..os.time(),os.date("%H:%M:%S - %d/%m/%Y" , os.time()))
    print("Generation was linked to other var at "..os.time(),os.date("%H:%M:%S - %d/%m/%Y" , os.time()))
    return cache
end
