class User < ApplicationRecord
  LOYALTY_MEMBER_TIER = {
    'bronze': 5,
    'silver': 10,
    'gold': 20  
  }
      
  validates :first_name, :last_name, :loyalty_member_tier, presence: true
 
  has_many :bookings  
end
