require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :password => "Password",
      :username => "Username",
      :bio => "MyText",
      :first_name => "First Name",
      :last_name => "Last Name",
      :website => "Website",
      :public_email => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Username/)
    rendered.should match(/MyText/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Website/)
    rendered.should match(/false/)
  end
end
