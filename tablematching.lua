local tbl = {}
local str = false
local sov = 0
for i=1,100 do table.insert(tbl,i,i) end
for _,v1 in ipairs(tbl) do
    for _,v in ipairs(tbl) do
        if v1==v then
            str = "sovpalo"
            sov = sov+1
        end
        print(v1,v,str and str or "ne sovpalo")
        str = false
    end
end
print("all matches: "..sov.."\ntable indexes: "..#tbl)
