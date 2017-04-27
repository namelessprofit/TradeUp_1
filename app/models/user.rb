class User < ApplicationRecord
  has_many :items
  has_many :favorites

  validates :email, presence: true,
  uniqueness: { case_sensitive: false },
  length: { minimum: 3, maximum: 25 }

  validates :usernamer, presence: true,
  uniqueness: { case_sensitive: false },
  length: { minimum: 3, maximum: 25 }

  validates :location, presence: true,
  numericality: true,
  length: { minimum: 5, maximum: 5 }

  validates :password, presence: true,
  length: { minimum: 3, maximum: 25 }


  has_secure_password
end
