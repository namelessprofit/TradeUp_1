class AddGroupToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :group, :integer
  end
end
