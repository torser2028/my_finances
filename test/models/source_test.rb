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
require "test_helper"

class SourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
