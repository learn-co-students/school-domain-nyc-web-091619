require 'pry'

class School

    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        @student = student
        @grade = grade

        if roster[grade] 
            roster[grade] << student
        else 
            roster[grade] = [] 
            roster[grade].push(student)
        end
    end
    
    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each {|grade, student| student.sort!}
    end
end


school = School.new("Bayside High School")
