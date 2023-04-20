# == Schema Information
#
# Table name: user_categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :user_category do
    name { "MyString" }
    user { nil }
  end
end
