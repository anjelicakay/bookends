class CreateInventories < ActiveRecord::Migration[5.2]

  def change
    create_table :inventories do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.integer    :status

      t.timestamps
    end
  end

end
