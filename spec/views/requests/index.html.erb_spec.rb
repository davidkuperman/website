require 'spec_helper'

describe "requests/index.html.erb" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :name => "Name",
        :lastname => "Lastname",
        :company => "Company",
        :role => "Role",
        :email => "Email",
        :phone => 1,
        :comments => "MyText"
      ),
      stub_model(Request,
        :name => "Name",
        :lastname => "Lastname",
        :company => "Company",
        :role => "Role",
        :email => "Email",
        :phone => 1,
        :comments => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
