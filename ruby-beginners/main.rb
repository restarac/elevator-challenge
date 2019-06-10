class Building
    attr_reader :name, :floors, :employees, :elevators

    def initialize(name, floors, employees, elevators)
        @name = name
        @floors = floors
        @employees = employees
        @elevators = elevators
    end
end

class Floor
    include Comparable
    attr_reader :id

    def initialize(id)
        @id = id
    end

    def to_s
        @id
    end

    def inspect
        @id
    end

    def <=>(other)
        @id <=> other.id
    end
end

class Employee
    require 'securerandom'
    attr_reader :name
    attr_accessor :current, :objective

    def initialize(current, objective, name = "Default")
        @current = current
        @objective = objective
        @name = "#{name}-#{SecureRandom.uuid}"
    end

    def delivered?
        @current == @objective
    end
end

class ElevatorPool
    attr_reader :elevators

    def initialize(elevators)
        @elevators = elevators
    end

    def self.for(number)
        elevators = []

        for id in 1..number do
            elevators << Elevator.new(id)
        end

        self.new(elevators)
    end
end

class Elevator
    attr_reader :id

    def initialize(id)
        @id = id
    end

    def floor_by_minute
        5
    end
end

ground_floor = Floor.new("Terreo")

puts "creating floors..."
floors = [ground_floor]
for id in 1..6 do
    floors << Floor.new("floor #{id}")
end
puts "#{floors.size-1} floors created!"

puts "creating employees..."
employees = []
for id in 1..150 do
    employees << Employee.new(ground_floor, floors[5])
end
puts "#{employees.size} employees created!"

puts "puting the employees on the entrance hall..."
elevators = ElevatorPool.for(1)
building = Building.new("Beginners Building", floors, employees, elevators)
puts "The building is now complete!!!"

require "awesome_print"
ap building, options = {raw: false, limit: 10, class_name: :to_s}
puts ground_floor

