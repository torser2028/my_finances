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
require "rails_helper"

RSpec.describe UserCategory, type: :model do
  it "has a valid factory" do
    user_category = FactoryBot.create(:user_category, :with_user)
    expect(user_category).to be_valid
  end
end
