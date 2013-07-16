class Coaster < ActiveRecord::Base
  # defines relationship between coasters and users
  has_and_belongs_to_many :users
  # defines relationship between coasters and parks
  belongs_to :parks
end