Fabricator(:user) do
  email { Faker::Internet.email }
  password 'abc123'
end
