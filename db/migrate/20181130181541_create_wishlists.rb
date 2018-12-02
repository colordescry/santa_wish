class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.integer :child_id
      t.boolean :buy

      t.timestamps
    end
  end
end
