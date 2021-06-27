function MatchAllValues(tblfrom,tblto,func)
    local sov = 0
    local str
    for _,v1 in ipairs(tblfrom) do
        for _,v in ipairs(tblto) do
            if v1==v then
                str = true
                sov = sov+1
            end
            if func then
                func(v1,v,str)
            end
        end
    end
    return sov
end
