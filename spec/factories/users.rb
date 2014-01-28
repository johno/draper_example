# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    password "MyString"
    username "MyString"
    bio "MyText"
    first_name "MyString"
    last_name "MyString"
    website "MyString"
    public_email false
  end
end
