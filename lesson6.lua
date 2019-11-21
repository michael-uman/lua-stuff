-- lesson6 - Michael Uman - Exercise OO programming


-- Added to support local-lua debugger
if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

local r = require("car")

local cars = {
    Car:new("Ford",         "Mustang GT",   2019),
    Car:new("Toyota",       "Camry",        2012),
    Car:new("Chevrolet",    "Camero",       2018),
    Car:new("Dodge",        "Challenger",   2015),
    Car:new("Jeep",         "Cherokee",     2007),
    Car:new("Volkswagen",   "Bug",          1973),
}

-- Sort table by year
table.sort(cars, function (a,b) return a:year() < b:year() end)

for key, value in pairs(cars) do
    value:print();
end
