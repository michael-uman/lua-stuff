-- functions

--- Display a table to the console.
function DisplayTable(title, tab)
    local line = "{ "
    local index = 1
    print(title)
    for key, value in pairs(tab) do
        local dispvalue = ""

        -- print("Key " .. key .. " Type " .. type(key))

        if type(key) == "string" then
            dispvalue = key .. " = " .. value
        else
            dispvalue = value
        end

        -- Add comma separator if this is not the 1st value
        if index ~= 1 then
            line = line .. ", "
        end

        line = line .. dispvalue
        index = index + 1
    end
    line = line .. " }"

    print(line)
end

--- Transform table using function (modifies input table)
function Transform_inplace(tab, func)
    for key, value in pairs(tab) do
        tab[key] = func(value)
    end
end

--- Transform table using function (returns new table)
function Transform(tab, func)
    local new_table = {}
    for key, value in pairs(tab) do
        new_table[key] = func(value)
    end
    return new_table
end
