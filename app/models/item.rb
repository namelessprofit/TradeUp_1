class Item < ApplicationRecord
  belongs_to :user
  belongs_to :offer, optional: true
end
