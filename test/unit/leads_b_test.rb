# == Schema Information
#
# Table name: leads_bs
#
#  id         :integer          not null, primary key
#  Address1   :string(255)
#  Address2   :string(255)
#  Address3   :string(255)
#  Address4   :string(255)
#  FirstName  :string(255)
#  HomePhone  :string(255)
#  LastName   :string(255)
#  Postcode   :string(255)
#  Price      :string(255)
#  Title      :string(255)
#  Address5   :string(255)
#  Address6   :string(255)
#  longitude  :float
#  latitude   :float
#  gmap       :boolean
#  Distance   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gmaps      :boolean
#

require 'test_helper'

class LeadsBTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
