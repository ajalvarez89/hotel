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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
