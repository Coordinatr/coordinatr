# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string           not null
#  uid        :string           not null
#  name       :string
#  location   :string
#  image_url  :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
