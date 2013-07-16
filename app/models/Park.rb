class Park < ActiveRecord::Base
  # defines relationship between parks and coasters
  has_many :coasters
end