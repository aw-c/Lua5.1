function math.ConcatenateNumberToNumber(to,num)
	return tonumber(tostring(to)..tostring(num))
end

function math.GetRandomNumbers(howmuch,max)
	local rand = math.random
	local con = math.ConcatenateNumberToNumber
	local curnum

	for i=1,howmuch do
		local randomized = rand(max)
		curnum = curnum and con(curnum,randomized) or randomized
	end

	return curnum
end


--examples:
--  print(math.ConcatenateNumberToNumber(4,50))
--  output: 450

--  print(math.GetRandomNumbers(5,9))
--  output will be random 5 numbers: 68997
