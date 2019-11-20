-- functions

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

        if index ~= 1 then
            line = line .. ", "
        end

        line = line .. dispvalue
        index = index + 1
    end
    line = line .. " }"

    print(line)
end

