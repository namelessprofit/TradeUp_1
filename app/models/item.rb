class Item < ApplicationRecord
  belongs_to :user
  belongs_to :offer, optional: true
  has_many :favorites

  validates :title, presence: true

  validates :group, presence: true

  validates :image, presence: true

  validates :description, presence: true



  has_attached_file :image, styles: { large: "400x400>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  enum group: [:service, :experience, :item ]
  enum servicecategory: [:labor, :construction, :web, :childcare, :food, :health, :not_listed]
  enum experiencecategory: [:music, :travel, :outdoors, :sports, :misc]
  enum itemcategory: [:electronics, :furniture, :fashion, :auto, :real_estate, :collectibles, :sporting_goods, :toys, :business_or_industrial, :home_and_garden, :miscellaneous]
  enum condition: [:new_in_box, :good, :refurbished, :used, :other]

end
