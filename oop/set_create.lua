--[[

Name: set_create.lua
DescriptionL set_create is a lua script that uses OOP to make sets

]]--


local t = {}
t.__index = t

function check(object, t)
  return (type(object) == t)
end  

function t.new(t)
  if not check(t, "table") and not check(t, "nil") then
      print("No table found! Creating new table for table.")
     return setmetatable({},t)
  end 
  return setmetatable(t or {},t)
end

function t:add(s)
    self[s] = true
end

function t:delete(s)
    self[s] = nil
end

function t:replace(v1,v2)
    self[v1] = nil
    self[v2] = true
end

return t -- remove ln if not nessecary
