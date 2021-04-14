local tbl = {}
local str = false
local sov = 0
for i=1,100 do table.insert(tbl,i,i) end
for k in ipairs(tbl) do
    for _,v in ipairs(tbl) do
        if k==v then
            str = "sovpalo"
            sov = sov+1
        end
        print(k,v,str and str or "ne sovpalo")
        str = false
    end
end
print("all matches: "..sov.."\ntable indexes: "..#tbl)
