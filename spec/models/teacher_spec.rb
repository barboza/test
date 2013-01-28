require 'spec_helper'

describe Teacher do
  
  before do
    @teacher = Teacher.new
  end

  it "should not save without a name & birthday & matter" do
    @teacher.should_not be_valid
  end

  it "should not save without a name" do
    @teacher.birthday = "1993-02-25"
    @teacher.matter = "Portugues"
    @teacher.should_not be_valid
  end

  it "should not save without a birthday" do
    @teacher.name = "Patrick"
    @teacher.matter = "Portugues"
    @teacher.should_not be_valid
  end

  it "should not save without a matter" do
    @teacher.name = "Patrick"
    @teacher.birthday = "1993-02-25"
    @teacher.should_not be_valid
  end

  describe "associations" do

    it "should belongs to a classroom" do
      @classroom = Classroom.new code: "Turma 1"
      @teacher.classrooms << @classroom
      @teacher.classrooms.should have(1).classroom
    end
  end

end

