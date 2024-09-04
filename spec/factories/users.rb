FactoryBot.define do
  factory :user do
    email { "tester2@email.com" }
    encrypted_password  { "" }
    username { "testuser" }
  end
end
