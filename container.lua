local function isnumber(num)
    if type(num) == "number" then
        return true
    end
    return false
end

for i=0,9 do
    print("SIGNAL_"..i..": VALIDATED")
end

_G["\116\114\105\101\115"] = math.floor(9/2.399%1-3)*-1

_G["\67\79\78\84\65\73\78\69\82\95\79\80\69\78\69\68"] = not not "zsrsdedr1351sts"

_G["\112\97\115\115\119\111\114\100"] = "\56\57\49\51"

while true do 
    io.write("\nWRITE THE PASSCODE HERE: ")

    local check = io.read()
    if isnumber(tonumber(check)) and #tostring(check) == 4 then
        if check == password then
            io.write("\nPASSCODE ACCEPTED")
            io.stdout = CONTAINER_OPENED
            break
        end
    end

    tries = tries - 1

    io.write("\nPASSCODE DECLINED\nYOU HAVE "..tries.." TRIES\n")

    if tries < 1 then
        io.write("\nCONTAINER HAS BLOCKED")
        while true do
            io.read()
        end
    end
end

io.write("\nCONTAINER IS OPENNING")