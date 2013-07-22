# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

  # This gives us setter/getter methods
  # This might not be in the database
  attr_accessor :password
  before_save :encrypt_password

  # # This checks that the password_confirmation == password
  # # Automatically gives us the password_confirmation setter
  validates :password, confirmation: true
  validates :password, presence: true, on: :create
  # # requires password_confirmation presence
  validates :password_confirmation, presence: true

  # defines relationship between users and coasters
  has_and_belongs_to_many :coasters
  # makes all user attributes accessible
  attr_accessible :user_name, :email, :password, :password_confirmation
  # requires existence of all user attributes
  validates :user_name, :email, presence: true
  # defines maximum length for all user attributes
  validates :user_name, :email, :password, length: { maximum: 40 }
  # requires unique user name and email address
  validates :user_name, :email, uniqueness: true
  # requires password to be at least 8 letters
  validates :password, length: { minimum: 8 }



  def encrypt_password
    if password.present?
      # This generates a random string that helps me encrypt the password
      self.password_salt = BCrypt::Engine.generate_salt

      # This encrypts the password, using the salt we just created
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(user_name, password)
    # This will auth a user
    user = User.find_by_user_name(user_name)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
