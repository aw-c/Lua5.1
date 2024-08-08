-- Created by Alan Wake 8/8/2024

local xml2lua = require("xml2lua")
local handler = require("xmlhandler.tree")

local file = io.open("types.xml", "r")

if (not file) then
    print("You should insert your types.xml near the prog")
    return 1
end

file:close()

local file_contents = xml2lua.loadFile("types.xml")

local parser = xml2lua.parser(handler)
parser:parse(file_contents)

local created_io = {}

local function tryNewIO(category, type, loc)

    if (created_io[category]) then
        created_io[category]:write("\n" .. type .. " " ..loc)
        return
    end

    created_io[category] = io.open(category..".txt", "w+")
    created_io[category]:write("\n" .. type .. " " ..loc)
    
end

local txt = ""

for k,v in pairs(handler.root.types.type)do

    local name = v._attr.name
    local usage = v.usage and v.usage._attr and v.usage._attr.name or "usage_not_defined"
    local category = v.category and v.category._attr and v.category._attr.name or "undefined_category"

    tryNewIO(category, name, usage)

end

local f = io.open("test.txt","w+")
f:write(txt)