-- Variables
local x = 10
local y = "Hello, World!"

-- Functions
function greet(name)
  return "Hello, " .. name .. "!"
end

-- Tables
local person = {
  name = "Alice",
  age = 25,
  greet = function(self)
    print("Hello, my name is " .. self.name)
  end
}

-- Metatables
local mt = {
  __add = function(a, b)
    return a.value + b.value
  end
}

local obj1 = { value = 10 }
local obj2 = { value = 20 }
setmetatable(obj1, mt)
setmetatable(obj2, mt)

-- Control Structures
local count = 0
while count < 5 do
  print(count)
  count = count + 1
end

for i = 1, 5 do
  print(i)
end

-- Function Closures
local function counter()
  local count = 0
  return function()
    count = count + 1
    return count
  end
end

local cnt = counter()

-- Coroutines
local function producer()
  return coroutine.yield("Hello")
end

local function consumer()
  local status, value = coroutine.resume(coroutine.create(producer))
  print(value)
end

-- Modules
local mymodule = {}

function mymodule.foo()
  print("Hello from mymodule.foo")
end

return mymodule
