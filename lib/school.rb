# code here!
class School
    attr_accessor 
    attr_reader :school_name, :roster

    def initialize(name)
        @school_name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade] << name   
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, students|
          students.sort!
        end
        roster
      end

end
