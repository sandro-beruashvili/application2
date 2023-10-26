Person = {}
Person.__index = Person

function Person.new(firstName, age)
    local self = setmetatable({}, Person)
    self.firstName = firstName
    self.age = age
    return self
end

function Person:sayHello()
    print("Hello, my name is " .. self.firstName .. " and I am " .. self.age .. " years old.")
end

local people = {}

function addAPerson()
    print("Enter person's name:")
    local firstName = io.read()
    
    print("Enter person's age:")
    local age = tonumber(io.read())

    local person = Person.new(firstName, age)
    table.insert(people, person)
end

function displayPeople()
    for _, person in ipairs(people) do
        person:sayHello()
    end
end

while true do
    print("Choose an option:")
    print("1. Add a person")
    print("2. Display all people")
    print("3. Exit")

    local choice = tonumber(io.read())

    if choice == 1 then
      addAPerson()
    elseif choice == 2 then
        displayPeople()
    elseif choice == 3 then
        break
    else
        print("ricxvebs ver archev?? kidev scade")
    end
end