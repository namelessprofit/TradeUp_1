class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.text :message
      t.boolean :is_completed
      t.boolean :is_accepted
      t.belongs_to :requested_item, :class_name => 'Item'
      t.belongs_to :offered_item, :class_name => 'Item'
      t.belongs_to :receiver, :class_name => 'User'
      t.belongs_to :initiator, :class_name => 'User'
      t.timestamps
    end
  end
end
