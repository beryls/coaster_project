class User < ActiveRecord::Base
  has_and_belongs_to_many :coasters
  attr_accessible :name, :user_name, :email, :password
  validates :name, :user_name, :email, :password, presence: true
  validates :name, :user_name, :email, :password, length: { maximum: 40 }
  validates :user_name, :email, uniqueness: true
  validates :password, length: { minimum: 8 }
end