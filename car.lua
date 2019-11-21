

Car = {
	make = "",
	model = "",
	year = 2020,
}

function Car:new(make, model, year)
	local o = {}
	setmetatable(o, self)
	self.__index = self

	o.make = make
	o.model = model or "Undefined"
	o.year = year or 2020

	return o
end

function Car:print()
	print(string.format("%d %-12s - %-12s", self.year, self.make, self.model))
end