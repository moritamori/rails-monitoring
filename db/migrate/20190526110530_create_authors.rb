class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
