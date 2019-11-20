-- Lesson2 - Michael Uman

local MyTable = {}

function PopulateTable()
    for i = 1, 10 do 
        MyTable[i] = i * i
    end
end

function DumpTable(title, x)
    print(title)
    for i = 1, #x do
        print(x[i])
    end
end


function Operator(oper)
    if oper == "add" then
        return function (...)
            local accum = 0
            for key, value in pairs({...}) do
                accum = accum + value
            end
            return accum
        end
    elseif oper == "sub" then
        return function (...)
            local accum = 0
            for key, value in pairs({...}) do
                if key == 1 then
                    accum = value
                else
                    accum = accum - value
                end
            end
            return accum
        end
    end
end

function VarArgs(...)
    print(...)
    for key, value in pairs({...}) do
        print(key, value)
    end
end

PopulateTable()

DumpTable("Dump of MyTable:", MyTable)


print("Add : " .. Operator("add")(2, 3, 8))
print("Sub : " .. Operator("sub")(100, 2, 3))

print("Add : " .. Operator("add")(table.unpack(MyTable)))

-- VarArgs(2, 4, 6, 8)

