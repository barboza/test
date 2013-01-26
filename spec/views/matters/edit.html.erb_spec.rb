require 'spec_helper'

describe "matters/edit" do
  before(:each) do
    @matter = assign(:matter, stub_model(Matter,
      :name => "MyString",
      :discription => "MyText"
    ))
  end

  it "renders the edit matter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => matters_path(@matter), :method => "post" do
      assert_select "input#matter_name", :name => "matter[name]"
      assert_select "textarea#matter_discription", :name => "matter[discription]"
    end
  end
end
