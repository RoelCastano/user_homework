require 'spec_helper'
require 'user'
require 'course'

describe User do

    it "initializes and returns user" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", false)
        expect(user.name).to eql "Roel"
    end

    it "initializes and returns user" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", false)
        expect(user.username).to eql "roelcastano"
    end

    it "initializes and returns user" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", false)
        expect(user.email).to eql "roel@mail.com"
    end

    it "initializes as teacher" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", true);
        expect(user.isTeacher).to eql true
    end

    it "Is invalid without username or email" do
        user = User.new("Roel", "roel@mail.com", "roelcastano", true);
        user.email = nil
        expect(user.isValid).to eql false
        user.email = "roelcastano"
        user.username = nil
        expect(user.isValid).to eql false
    end


end
