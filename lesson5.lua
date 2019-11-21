-- lesson5 - Michael Uman

-- Pull in functions module using 'require'
require "functions"

local dataSet = { 12, 11, 15, 8, 10, 14, 9, 11, 18, 16 }


local squareFunc = function (x)
    return x * x
end

local sqrtFunc = function (x)
    return math.sqrt(x)
end

DisplayTable("Original Table :", dataSet)
DisplayTable("Squared Table :", Transform(dataSet, squareFunc))
DisplayTable("Sqroot Table :", Transform(dataSet, sqrtFunc))
