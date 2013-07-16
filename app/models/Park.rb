# == Schema Information
#
# Table name: parks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Park < ActiveRecord::Base
  # makes all user attributes accessible
  attr_accessible :name
  # defines relationship between parks and coasters
  has_many :coasters
end
