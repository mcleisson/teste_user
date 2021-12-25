class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nat
      t.string :seed
      t.string :gender
      t.string :name
      t.string :email
      t.string :picture_large
      t.string :picture_thumbnail

      t.timestamps
    end
  end
end
