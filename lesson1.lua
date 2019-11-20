-- My First Lesson

function OptionOne(arg1, arg2, arg3)
    print("Option One")
    return "One"
end

function OptionTwo(arg1, arg2, arg3)
    print("Option Two")
    return "Two"
end

local FunctionTable = {
    function1 = OptionOne,
    function2 = OptionTwo,
}

-- Loop 10 times calling the function table.
for i = 1, 10 do
    local a = FunctionTable.function1(10, 20, 30)
    local b = FunctionTable.function2(1, 2, 3)

    print(i .. " -> " .. a .. " " .. b)
end

