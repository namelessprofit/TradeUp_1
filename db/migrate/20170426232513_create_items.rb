class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :condition
      t.string :image
      t.boolean :is_available
      t.integer :type
      t.integer :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
