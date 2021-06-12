# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  password   :string           not null
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..12 }
  validates :email, presence: true, length: { in: 4..12 }, format: {
    with: /[a-z0-9]+[_a-z0-9.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/,
    message: 'Invalid email, please check'
  }
  validates :password, presence: true, length: { in: 4..12 }
end
