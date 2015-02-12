require 'spec_helper'
require 'course'
require 'user'

describe Course do

    it "Has more than one student" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", false)
        user2 = User.new("Andres", "andres@mail.com", "andrea", false)
        user3 = User.new("Kurenn", "kurenn@mail.com", "Kurenn", true)
        course = Course.new("APIs Class", user3)
        expect(course.students.empty?).to eql(true)
        course.addStudent(user)
        course.addStudent(user2)
        expect(course.students.empty?).to eql(false)
    end


end
