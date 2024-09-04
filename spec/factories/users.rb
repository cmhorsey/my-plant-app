FactoryBot.define do
  factory :user do
    email { "tester2@email.com" }
    encrypted_password  { "password1" }
    username { "testuser" }
  end
end
