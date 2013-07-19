# == Schema Information
#
# Table name: coasters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  park_id    :integer
#  material       :string(255)
#  height     :integer
#  length     :integer
#  speed      :integer
#  inversions :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coaster < ActiveRecord::Base
  # makes all user attributes accessible
  attr_accessible :name, :park_id, :material, :height, :length, :speed, :inversions
  # requires existence of coaster attributes to input
  validates :name, :park_id, presence: true
  # prevents negative and non-numerical values for coaster specs
  validates :height, :length, :speed, :inversions, :allow_nil => true, :numericality => { :greater_than_or_equal_to => 0 }
  # defines relationship between coasters and users
  has_and_belongs_to_many :users
  # defines relationship between coasters and parks
  belongs_to :parks
end
