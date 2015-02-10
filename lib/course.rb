class Course
    attr_accessor :name, :students, :teacher

    def initialize(name, teacher)
        @name = name
        @teacher = teacher
        @students = []
    end

    def addStudent(usr)
        @students << usr
    end

    def removeStudent(usr)
        @students.delete(usr)
    end

    def listStudents
        @students.each do |usr|
            puts "Name: "+usr.name+", Username: "+usr.username+", Email: "+usr.email
        end
    end

end
