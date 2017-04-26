class Offer < ApplicationRecord
  belongs_to :requested_item, :class_name => 'Item'
  belongs_to :offered_item, :class_name => 'Item'
  belongs_to :receiver, :class_name => 'User'
  belongs_to :initiator, :class_name => 'User'  
end
