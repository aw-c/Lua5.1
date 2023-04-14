function DAYZ_ConvertJSONSpawns(oldname,newname)
    local file = io.open(oldname,"r")
    local data = json.decode(file:read())

    file:close()

    local newtbl = {}

    for k,v in pairs(data)do
        newtbl[v.Name] = {}

        local i = 1

        for k2,v2 in pairs(v.Positions)do
            newtbl[v.Name][i] = string.format("%f %f %f",v2[1],v2[2],v2[3])
            i = i + 1
        end
    end

    file = io.open(newname,"w+")
    file:write(json.encode(newtbl))
    file:close()

end
