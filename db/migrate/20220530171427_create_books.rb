class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :description
      t.string :category
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
