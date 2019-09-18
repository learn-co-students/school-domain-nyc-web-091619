<<<<<<< HEAD
class School
    attr_accessor :roster
    attr_reader :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade] 
            roster[grade] = []
        end
        roster[grade] << name
    end

    def grade(number)
        roster[number]
    end

    def sort
        @roster.each do | grade, student |
            student.sort!
        end
    end
    
end

school = School.new("Bayside High School")
=======
# code here!


class School

    attr_accessor :roster, :student, :grade

    def initialize(name)
        @name = name
        @roster = []
    end

    def add_student(student, grade)
        if !grade.to_i 
            @grade = []
        end
        grade << student
    end


end

school = School.new("Bayside High School")

>>>>>>> 8e8928b58015708115f82b276e39228699a2ddc5
