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

class Elevator
    def floor_by_minute
        5
    end
end
