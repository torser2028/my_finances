# == Schema Information
#
# Table name: sources
#
#  id         :bigint           not null, primary key
#  name       :string
#  user_id    :bigint           not null
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :source do
    name { "MyString" }
    user { nil }
    color { "MyString" }
  end
end
