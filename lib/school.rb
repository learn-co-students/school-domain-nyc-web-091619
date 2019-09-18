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

