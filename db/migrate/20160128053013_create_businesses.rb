class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal
      t.string :email
      t.string :phone
      t.string :url
      t.text :description
      t.string :keywords
      t.string :logo
      t.string :audio
      t.string :category_id

      t.timestamps null: false
    end
  end
end
