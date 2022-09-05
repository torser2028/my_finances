FactoryBot.define do
  factory :transaction do
    type { "" }
    name { "MyString" }
    date { "2022-09-05" }
    value { 1.5 }
    reminder { "2022-09-05" }
    category { nil }
    source { nil }
    user { nil }
  end
end
