# code here!
class School
    attr_accessor :school
    def initialize(school_name)
        @school = school_name
        @school_roster = Hash.new
    end

    def add_student(name, grade)
        @school_roster[grade] = [] unless @school_roster.key?(grade)
        @school_roster[grade] << name
    end

    def grade(grade)
        @school_roster[grade]
    end

    def sort
        _sorted = {}
        @school_roster.each do |grade, student|
            _sorted[grade] = @school_roster[grade].sort
        end
        _sorted
    end

    def roster
        @school_roster
    end
    
end