class Building
    attr_accessor :name, :floors
    def initialize(name, floors)
        @name = name
        @floors = floors
    end
end

class Floor
    def initialize(id)
      @id = id
    end
end

class Employes
    attr_accessor :current, :final

    def initialize(current, final)
        @current = current
        @final_floor = final_floor
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
