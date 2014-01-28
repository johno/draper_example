json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :username, :bio, :first_name, :last_name, :website, :public_email
  json.url user_url(user, format: :json)
end
