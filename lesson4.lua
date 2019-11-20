-- lesson4 - String exercises

local localTable = { 1, 2, 3, 4 }
local a = "My name is Michael"


local transform = function (tab)
    print("transform start")
    for key, value in pairs(tab) do
        tab[key] = value * 1.5
    end
end

print("String : " .. a .. " Length : " .. a:len())

print(string.find(a, "name"))

print(a:find("is"))


local name = a:match("My name is (%w+)")

print("User name = " .. name)

-- io.write("Enter your name : ")
-- io.read()

-- loadfile("functions.lua")()
dofile("functions.lua")

DisplayTable("Dump Table :", localTable)
transform(localTable)
DisplayTable("Dump Table :", localTable)

DisplayTable("Another Table :", { fname = "Michael", lname = "Uman"} )
