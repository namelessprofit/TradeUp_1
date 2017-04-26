class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :role
      t.integer :location
      t.integer :rating
      t.integer :rating_count

      t.timestamps
    end
  end
end
