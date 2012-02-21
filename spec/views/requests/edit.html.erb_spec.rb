require 'spec_helper'

describe "requests/edit.html.erb" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :name => "MyString",
      :lastname => "MyString",
      :company => "MyString",
      :role => "MyString",
      :email => "MyString",
      :phone => 1,
      :comments => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requests_path(@request), :method => "post" do
      assert_select "input#request_name", :name => "request[name]"
      assert_select "input#request_lastname", :name => "request[lastname]"
      assert_select "input#request_company", :name => "request[company]"
      assert_select "input#request_role", :name => "request[role]"
      assert_select "input#request_email", :name => "request[email]"
      assert_select "input#request_phone", :name => "request[phone]"
      assert_select "textarea#request_comments", :name => "request[comments]"
    end
  end
end
