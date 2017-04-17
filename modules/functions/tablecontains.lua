function table.contains(table, element)
        for _, value in pairs(table) do
                if value == element then
                        return true
                end
        end
        return false
end
 
function table.containsKey(table, key)
        for value, _ in pairs(table) do
                if value == key then
                        return true
                end
        end
        return false
end