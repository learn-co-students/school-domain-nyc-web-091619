

require 'pry'
class School
  
    attr_accessor :name, :roster
    
    def initialize(name)
      @name = name
      @roster = {}
    end
    
    def add_student(name,grade)
      @roster[grade] ||= []
      @roster[grade] << name
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        sorted = {}
        @roster.each{|grade,students| sorted[grade] = students.sort}
        sorted
    end 
    
  end

  #binding.pry
