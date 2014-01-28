require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :username => "Username",
        :bio => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :website => "Website",
        :public_email => false
      ),
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :username => "Username",
        :bio => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :website => "Website",
        :public_email => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
