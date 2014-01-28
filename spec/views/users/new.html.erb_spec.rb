require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :password => "MyString",
      :username => "MyString",
      :bio => "MyText",
      :first_name => "MyString",
      :last_name => "MyString",
      :website => "MyString",
      :public_email => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "textarea#user_bio[name=?]", "user[bio]"
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_website[name=?]", "user[website]"
      assert_select "input#user_public_email[name=?]", "user[public_email]"
    end
  end
end
