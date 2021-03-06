# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  number     :string
#  daily_rate :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
  validates :number, :daily_rate, presence: true
end
