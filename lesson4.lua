-- lesson4 - String exercises

local localTable = { 1, 2, 3, 4 }
local a = "My name is Michael"


local transform = function (tab, func)
    -- print("transform start")
    for key, value in pairs(tab) do
        tab[key] = func(value)
    end
end

print("String : " .. a .. " Length : " .. a:len())

-- Two ways to call find function
print(string.find(a, "name"))
print(a:find("is"))

-- Try string.match to use regexp to extract name from string
local name = a:match("My name is (%w+)")
print("User name = " .. name)

-- Pull in functions from external file and expose to the script

dofile("functions.lua")

DisplayTable("Dump Table :", localTable)
transform(localTable, function (x) return x * 1.5 end)
DisplayTable("After Transform :", localTable)

DisplayTable("Another Table :", { fname = "Michael", lname = "Uman"} )
