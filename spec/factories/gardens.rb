FactoryBot.define do
  factory :garden do
    name { "My Garden" }
    location { "Backyard" }
    notes { "This is a note about the garden." }
    association :user
  end
end
