-- This is a comment
-- 
-- [[
--	multi 
--	line 
--	comment
-- ]]
--
-- Data Types
--
-- nil
-- number 1 2 3 4 5
-- string "String" 'string'
-- boolean true false
-- tables
--
-- Multiline string
-- [[
--	line
--	new string
-- ]]


local mod = require('custom')
print('Result import '..mod.add(2,3))

print("Learning lua".." is fun")

local variableName = 24
print(variableName)

GlobalVar = 69
_G.GlobalScope = 56 -- Best global variable practice

local one, two, three = "Var", 4, true

if true then
	print("If statement")
end


print('Length of the variable '..#one)

function printTen ()
	print('10')
end
printTen()

-- define factorial

function fact (n)
	if n == 0 then
		return 1
	else
		return n * (fact (n-1))
	end
end

print("Enter the number")
a = io.read("*number") --read a number
print(fact(a))

print('Loop')

for i  = 1, 10 do
	print(i)
end

print('Skip one number ')

for i = 1, 10, 2 do
	print(i)
end

print('while loop')

local count = 0
while count < 10 do
	count = count + 1
	print(count)
end


print("Table")

local tbl = {"This", true, 55.3, {"Hello","World"}}

for i = 1, #tbl do
	print(tbl[i])
end

print(tbl)

-- Create a file

io.output("myfile.txt")
-- io.input("fileName.txt")
-- io.read("all")
io.write("Hello World!")

io.close()

-- Modules in lua
