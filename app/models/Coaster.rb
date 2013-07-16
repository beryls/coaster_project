# == Schema Information
#
# Table name: coasters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  park_id    :integer
#  material       :string(255)
#  height     :decimal(, )
#  length     :decimal(, )
#  speed      :decimal(, )
#  inversions :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coaster < ActiveRecord::Base
  # makes all user attributes accessible
  attr_accessible :name, :park_id, :material
  # defines relationship between coasters and users
  has_and_belongs_to_many :users
  # defines relationship between coasters and parks
  belongs_to :parks
end
