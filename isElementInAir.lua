function isElementInAir(element)
    local x, y, z = getElementPosition(element)
    if element and isElement(element) then 
        if z >= 10 then
           return z
        end
    end
end