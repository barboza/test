require 'spec_helper'

describe "matters/new" do
  before(:each) do
    assign(:matter, stub_model(Matter,
      :name => "MyString",
      :discription => "MyText"
    ).as_new_record)
  end

  it "renders new matter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matters_path, :method => "post" do
      assert_select "input#matter_name", :name => "matter[name]"
      assert_select "textarea#matter_discription", :name => "matter[discription]"
    end
  end
end
