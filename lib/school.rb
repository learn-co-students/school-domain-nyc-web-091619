# code here!
class School
    attr_reader :roster, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] = [] if !@roster.key?(grade)
        @roster[grade] << student_name
    end

    def grade(students_grade)
        return @roster[students_grade]
    end

    def sort
        @roster.each do |grade, person|
            @roster[grade] = person.sort
        end
        Hash[@roster.sort]
    end

end