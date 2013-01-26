require 'spec_helper'

describe "classrooms/new" do
  before(:each) do
    assign(:classroom, stub_model(Classroom,
      :code => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classrooms_path, :method => "post" do
      assert_select "input#classroom_code", :name => "classroom[code]"
      assert_select "textarea#classroom_description", :name => "classroom[description]"
    end
  end
end
