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
class TransactionSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :transaction_type, :name, :date, :value, :reminder, :category, :source, :user

  def category
    object.category.name
  end

  def source
    object.source.name
  end

  def user
    object.user.email
  end
end
