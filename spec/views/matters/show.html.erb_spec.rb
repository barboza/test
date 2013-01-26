require 'spec_helper'

describe "matters/show" do
  before(:each) do
    @matter = assign(:matter, stub_model(Matter,
      :name => "Name",
      :discription => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
