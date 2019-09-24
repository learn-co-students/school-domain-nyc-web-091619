require 'pry'

class School

    @@School = {}

    attr_accessor :name, :roster, :School

    def initialize(name)
        @name = name
        @roster = {}
    end # End of initialization

    def add_student(student, grade)

        if @roster.include?(grade) == true
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end # End of add_student method

    def grade(grade)
        if @roster.include?(grade)
            return @roster[grade]
        end
    end # End of grade method

    def sort
        sorted = {}
        
        roster.each do |grades, students|
            sorted[grades] = students.sort
          end
        sorted
        # binding.pr
    end

end # End of Class