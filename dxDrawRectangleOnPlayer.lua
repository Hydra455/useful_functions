function dxDrawRectangleOnPlayer(x, y, width, height, color)
   local players = getElementsByType("player", root, true)
   if players then
   local x, y, z = getElementPosition(localPlayer)
	for _, v in ipairs(players) do
	    if v and isElement(v) then
		local px, py, pz = getElementPosition(v)
		if getDistanceBetweenPoints3D(x, y, z, px, py, pz) <= 20 then
		   local sx, sy = getScreenFromWorldPosition(px, py, pz + 1.3)
		   if sx and sy then
		   dxDrawRectangle(sx + x, sy + y/1.6, width, height, color, false)
                end
            end
        end
    end
end
end