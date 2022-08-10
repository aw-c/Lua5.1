local levels = {
	0,
	50,
	150,
	250,
	400,
	500,
	600,
	800,
	1000,
	1200
}

local perks = {
	150,
	200,
	300,
	350,
	400,
	600,
	800,
	1000,
	1500,
	2000
}

while true do
    
	print("Что будем считать? L - Левелы, P - Перки")

	local res = io.read()

	local islevels = res:lower() == "l"

	local tbl = islevels and levels or perks

	print("Считаем "..(islevels and "левелы" or "перки")..". Текущий уровень?")

	local cur = tonumber(io.read()) or 1

	print("До?")

	local to = tonumber(io.read()) or 1

	if cur >10 or (islevels and cur < 1) or to < cur or to < 1 or to > 10 then
		
		print("Произошла ошибка")
		
		goto skip
		
	end

	local sum = 0

	for i=(islevels and cur+1) or cur,to do
		
		sum = sum + tbl[i]

	end

	print("Сумма составляет: "..sum)

	::skip::

end
