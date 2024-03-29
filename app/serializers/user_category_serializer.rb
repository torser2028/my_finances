# frozen_string_literal: true

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
class UserCategorySerializer < ActiveModel::Serializer
  attributes :name, :is_user_category

  def is_user_category
    true
  end
end
