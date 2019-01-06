-- Data Types
-- nil
myNil = nil
print(myNil)

-- string
myString = 'Hello, world!'
print(myString)

-- number
myInt = 3
myFloat = 1.23
print(myInt, myFloat)

-- boolean
myTrue = true
myFalse = false
print(myTrue, myFalse)

-- function
function printStr(string)
  print(string)
end
printStr('Foo')

-- table
-- note: the `table` data structure is used to represent arrays and dictionary-type data.
myArrayTable = {1, 2, 3, 4, 5}
myDictionaryTable = {}
myDictionaryTable['foo'] = 'bar'
myDictionaryTable['baz'] = 'quux'

print(myArrayTable)
-- To iterate over a table whose keys are indicies, use `ipairs`.
-- note: `pairs()` may also be used.
for index, value in ipairs(myArrayTable) do
  print(index, value)
end
for index, value in pairs(myArrayTable) do
  print(index, value)
end

print(myDictionaryTable)
-- To iterate over a table whose keys are strings, use `pairs()`.
for key, value in pairs(myDictionaryTable) do
  print(key, value)
end

-- thread

-- userdata
-- // TODO

-- Data Type Checking
-- The `type()` function may be used to retrieve the data type of a given variable.

types = {};
types['nil'] = nil
types['string'] = 'Hello, world!'
types['number'] = 1
types['boolean'] = true
types['function'] = function() return 'This is a function' end
types['table'] = {1, 2, 3}
types['thread'] = coroutine.create(function() return 'This value was generated within a coroutine' end)

for key, value in pairs(types) do
  print('The value at key ' .. key .. ' is of type ' .. type(value))
end
