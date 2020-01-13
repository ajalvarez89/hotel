# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  first_name          :string
#  last_name           :string
#  loyalty_member_tier :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ApplicationRecord
  LOYALTY_MEMBER_TIER = {
    'bronze': 5,
    'silver': 10,
    'gold': 20
  }

  validates :first_name, :last_name, :loyalty_member_tier, presence: true

  has_many :bookings
end
