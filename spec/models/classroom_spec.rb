require 'spec_helper'

describe Classroom do
  
  before do
    @classroom = Classroom.new
  end

  it "not should save without a code" do
    @classroom = Classroom.new
    @classroom.should_not be_valid
  end  

  describe "associations" do

    it "should accept teachers" do
      @classroom = Classroom.new
      @teacher = Teacher.new name: "Professor 1"
      @classroom.teachers << @teacher
      @classroom.teachers.should have(1).teacher
    end

    it "should accept students" do
      @student = Student.new name: "Aluno 1"
      @classroom.students << @student
      @classroom.students.should have(1).student
    end
  end
end

