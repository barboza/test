require 'spec_helper'

describe Student do
  
  before do
    @student = Student.new
    @student.name = "Aluno 1"
  end

  it "should valid" do
    @student.should be_valid
  end

  it "should not save without a name" do
    @student = Student.new
    @student.should_not be_valid
  end  

end

