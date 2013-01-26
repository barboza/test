require 'spec_helper'

describe "classrooms/show" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom,
      :code => "Code",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/MyText/)
  end
end
