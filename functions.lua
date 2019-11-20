-- functions

function DisplayTable(title, tab)
    local line = "{ "
    local index = 1
    print(title)
    for key, value in pairs(tab) do
        print("Key " .. key .. " Type " .. type(key))
        
        if index ~= 1 then
            line = line .. ", "
        end
        line = line .. value
        index = index + 1
    end
    line = line .. " }"

    print(line)
end

