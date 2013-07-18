# == Schema Information
#
# Table name: parks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  state      :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Park < ActiveRecord::Base
  # makes all user attributes accessible
  attr_accessible :name, :city, :state
  # requires existence of park attributes to input
  # need city and state for Google Maps API
  validates :name, :city, :state, presence: true
  # requires unique park name
  validates :name, uniqueness: true
  # defines relationship between parks and coasters
  has_many :coasters

  acts_as_gmappable

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.name}, #{self.city}, #{self.state}"
  end

end
