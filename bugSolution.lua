local function foo(t, orderedKeys)
  orderedKeys = orderedKeys or {}
  local result = {}
  for k, v in pairs(t) do
    table.insert(orderedKeys,k)
    if type(v) == "table" then
      foo(v,orderedKeys)
    end
    result[k] = v
  end
  return result
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local ordered = foo(t)
print(ordered)