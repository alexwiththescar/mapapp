# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  postcode   :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#  gmaps      :string(255)
#

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
