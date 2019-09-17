class School
    attr_reader :name, :roster
    attr_writer :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # Sorts the keys
        @roster.sort

        # Iterate keys, sorting all values
        sorted_roster = @roster.each { |key, value|
            @roster[key] = value.sort
        }

        # Return sorted roster
        sorted_roster 
    end
end

