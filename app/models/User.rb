class User < ActiveRecord::Base
  # defines relationship between users and coasters
  has_and_belongs_to_many :coasters
  # makes all user attributes accessible
  attr_accessible :name, :user_name, :email, :password
  # requires existence of all user attributes
  validates :name, :user_name, :email, :password, presence: true
  # defines maximum length for all user attributes
  validates :name, :user_name, :email, :password, length: { maximum: 40 }
  # requires unique user name and email address
  validates :user_name, :email, uniqueness: true
  # requires password to be at least 8 letters
  validates :password, length: { minimum: 8 }
end