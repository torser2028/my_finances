# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

FactoryBot.define do
  factory :user do
    email { "john@example.com" }
    password { "password" }
    password_confirmation { "password" }

    trait :with_categories do
      after(:create) do |user|
        create_list(:user_category, 2, user: user)
      end
    end
  end
end
