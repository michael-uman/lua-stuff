-- lesson7 - Michael Uman - Example of passing table with fields


--- Example of passing a table with fields
local function testTableFunc(tab)
    local name = tab.name or "Unknown"
    local age = tab.age or 20

    print("Name : " .. name)
    print("Age  : " .. age)
end

testTableFunc{name = "Michael Uman", age = 55}
testTableFunc{name = "Peter Rabbit"}
testTableFunc{age = 30}

