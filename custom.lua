Mod = {
	add = function (x, y)
		return x + y
	end
}

-- This is also valid for adding somthing to mod

function Mod.sayHello(name)
	print("Hello ! |"..name)
end


return Mod
