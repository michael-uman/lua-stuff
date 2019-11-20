-- lesson3 - Michael Uman

OperatorTable = {
    add = function(...)
        local accum = 0
        for key, value in pairs({...}) do
            accum = accum + value
        end
        return accum
    end,
    sub = function(...)
        local accum = 0
        for key, value in pairs({...}) do
            if key == 1 then
                accum = value
            else
                accum = accum - value
            end 
        end
        return accum
    end,
    mlt = function(...)
        for key, value in pairs({...}) do
            
        end    end,
    div = function(...)
        for key, value in pairs({...}) do
            
        end
    end,
}

local ops = OperatorTable

print(ops.add(1,2,3,4))


print(ops.sub(10,2,4,1))
