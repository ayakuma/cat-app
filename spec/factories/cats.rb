FactoryBot.define do
  factory :cat do
    user_id { 1 }
    name { "MyString" }
    string { "MyString" }
    prefectures { "MyString" }
    introduction { "MyText" }
    image { "MyString" }
  end
end
