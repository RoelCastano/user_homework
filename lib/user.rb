class User
    attr_accessor :name, :email, :username, :isTeacher, :courses

    def initialize(name, email, username, teacher)
        @name = name
        @email = email
        @username = username
        @isTeacher = teacher
        @courses = []
    end

    def addCourse(course)
        @courses << course
    end

    def removeCourse(course)
        @courses.delete(course)
    end

    def isTeacher
        @isTeacher
    end

    def isValid
        if (@username && @email)
            return true
        end
        return false
    end

end
