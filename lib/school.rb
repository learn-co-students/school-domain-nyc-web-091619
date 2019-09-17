class School
    attr_accessor :name, :roster

    #school has an empty roster when initialized -::new has an empty roster when initialized
    def initialize(name)
        @name = name
        @roster = {}
    end

    #add_student is able to add a student
    def add_student(student_name, grade) #get the input of the student's name and their grade
        roster[grade] ||= [] #able to add multiple students to the class/roster
        roster[grade] << student_name #able to add students to different grades
    end

    #able to retrieve students from a different grade
    def grade(student_grade)
        roster[student_grade] 
    end


    #sort students alphabetically by grade
    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end

end

