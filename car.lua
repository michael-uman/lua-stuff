

Car = {}

function Car:new(make, model, year)
	local o = {}
	setmetatable(o, self)
	self.__index = self

	o._make 	= make
	o._model 	= model or "Undefined"
	o._year 	= year or 2020

	return o
end

function Car:print()
	print(string.format("%d %-12s - %-12s", self._year, self._make, self._model))
end

-- Accessor for model year
function Car:year()
	return self._year
end

function Car:make()
	return self._make
end

function Car:model()
	return self._model
end
