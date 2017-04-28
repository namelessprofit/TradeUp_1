class User < ApplicationRecord
  has_many :items
  has_many :favorites

  validates :email, presence: true,
  uniqueness: { case_sensitive: false },
  length: { minimum: 3, maximum: 25 }

  validates :username, presence: true,
  uniqueness: { case_sensitive: false },
  length: { minimum: 3, maximum: 25 }

  validates :location, presence: true,
  numericality: true,
  length: { minimum: 5, maximum: 5 }

  validates :password, presence: true,
  length: { minimum: 3, maximum: 25 }, on: :create

  has_attached_file :image, styles: { medium: "260x260#", thumb: "150x150#"}, :default_url => ":style/UserDefault.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  before_save :default_values
  def default_values
    self.background_color ||= '#e6e6e6'
  end

  has_secure_password
end
