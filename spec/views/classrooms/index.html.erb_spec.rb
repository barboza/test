require 'spec_helper'

describe "classrooms/index" do
  before(:each) do
    assign(:classrooms, [
      stub_model(Classroom,
        :code => "Code",
        :description => "MyText"
      ),
      stub_model(Classroom,
        :code => "Code",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
