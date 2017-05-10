class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :DOB, :string
    add_column :users, :gender, :string
    add_column :users, :image, :string
  end
end
