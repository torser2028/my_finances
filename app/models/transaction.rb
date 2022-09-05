# == Schema Information
#
# Table name: transactions
#
#  id          :bigint           not null, primary key
#  type        :string
#  name        :string
#  date        :datetime
#  value       :float
#  reminder    :datetime
#  category_id :bigint           not null
#  source_id   :bigint           not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :source
  belongs_to :user
end
