require 'spec_helper'

describe "classrooms/edit" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom,
      :code => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classrooms_path(@classroom), :method => "post" do
      assert_select "input#classroom_code", :name => "classroom[code]"
      assert_select "textarea#classroom_description", :name => "classroom[description]"
    end
  end
end
