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

class User < ActiveRecord::Base
  def self.from_omniauth(auth_hash)
    user = find_or_create_by(
      uid: auth_hash['uid'],
      provider: auth_hash['provider']
    )
  end
end
