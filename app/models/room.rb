class Room < ApplicationRecord
  validates :number, :daily_rate, presence: true
end
