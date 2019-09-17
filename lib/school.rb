class School

    attr_reader :name 
    attr_accessor :roster 

    def initialize(name)
        @name = name
        @roster ={} 
    end 
    def add_student (student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end 

    def grade(grade)
     return  roster[grade]
    end 

    def sort 
        new_hash ={}
        roster.each do |grade, student_name|
            new_hash[grade] = student_name.sort 
        end 
        new_hash
    end 

        
    

    


end 