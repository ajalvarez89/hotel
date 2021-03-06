# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  room_id     :integer
#  user_id     :integer
#  check_in    :date
#  check_out   :date
#  minibar     :float
#  final_price :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BookingSerializer < ActiveModel::Serializer
  attributes :id, :minibar, :final_price,  :check_in, :check_out, :days, :client,:room

  def client
    #self.objet hace referencia la objeto serializado
    user = self.object.user
    room = self.object.room
    {
      first_name: user.first_name,
      last_name: user.last_name,
      complete_name: "#{user.first_name} #{user.last_name}",
      loyalty_member_tier: user.loyalty_member_tier,
      discount: Operations::Calculate.discount(days,room.daily_rate,User::LOYALTY_MEMBER_TIER[user.loyalty_member_tier.to_sym])
    }
  end

  def room
    #self.objet hace referencia la objeto serializado
    room = self.object.room
    {
      number: room.number,
      daily_rate: room.daily_rate
    }
  end

  def days
    (self.object.check_out - self.object.check_in).to_i
  end
end
