# == Schema Information
#
# Table name: transactions
#
#  id               :bigint           not null, primary key
#  transaction_type :string
#  name             :string
#  date             :datetime
#  value            :float
#  reminder         :datetime
#  category_id      :bigint           not null
#  source_id        :bigint           not null
#  user_id          :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :transaction do
    transaction_type { "" }
    name { "MyString" }
    date { "2022-09-05" }
    value { 1.5 }
    reminder { "2022-09-05" }
    category { nil }
    source { nil }
    user { nil }
  end
end
