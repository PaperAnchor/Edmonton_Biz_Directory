class RemoveCityAndPostalFromBusinesses < ActiveRecord::Migration
  def change
    remove_column :businesses, :city, :string
    remove_column :businesses, :postal, :string
  end
end
