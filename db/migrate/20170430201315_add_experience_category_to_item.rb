class AddExperienceCategoryToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :experiencecategory, :integer
    add_column :items, :servicecategory, :integer
    add_column :items, :itemcategory, :integer
  end
end
