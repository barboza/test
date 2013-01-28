require 'spec_helper'

describe Student do
  
  before do
    @student = Student.new
  end 

  it "should not save without a name & birthday" do
    @student.should_not be_valid
  end

  it "should not save without a name" do
    @student.birthday = "1993-02-25"
    @student.should_not be_valid
  end

  it "should not save without a birthday" do
    @student.name = "Patrick"
    @student.should_not be_valid
  end
  
  describe "associations" do
    it "should belongs to one classroom" do
      @classroom = Classroom.new code: "Turma 1"
      @student.classroom = @classroom
      @student.classroom.should == @classroom
    end
  end

end

