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

class User < ApplicationRecord
  devise :database_authenticatable, :jwt_authenticatable,
         :registerable, :recoverable, :rememberable, :validatable,
         jwt_revocation_strategy: JwtDenylist

  has_many :sources
  has_many :transactions
  has_many :user_categories
end
