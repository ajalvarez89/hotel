class BookingSerializer < ActiveModel::Serializer
  attributes :id, :minibar, :final_price,  :check_in, :check_out, :days, :client,:room

  def client
    #self.objet hace referencia la objeto serializado
    user = self.object.user
    {
      first_name: user.first_name,
      last_name: user.last_name,
      loyalty_member_tier: user.loyalty_member_tier
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
