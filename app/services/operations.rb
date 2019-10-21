module Operations
  class Calculate
    def self.discount(days,daily_rate,member_tier)
      room_price = days * daily_rate
      discount_price = (room_price * member_tier) / 100
      # room_price - discount_price
    end
  end
end
