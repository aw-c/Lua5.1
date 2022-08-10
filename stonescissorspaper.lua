local tbl = {
    "Stone",
    "Scissors",
    "Paper"
}

local winners = {
    "Ничья",
    "Машина",
    "Вы"
}

local function GetWinner(res,choice)

    res,choice = res:lower(),choice:lower()
    
    if res == choice then
        return winners[1]
    elseif (res == "stone" and choice == "scissors") or (res == "scissors" and choice == "paper") 
    or (res == "paper" and choice == "stone") then
        return winners[2]
    else
        return winners[3]
    end

end

print("Выберите что-нибудь: "..table.concat(tbl,", "))

local choice = io.read()

local res = tbl[math.random(1,3)]

print("Машине выпал: "..res..". У Вас "..choice)

print("Победитель: "..GetWinner(res,choice))
