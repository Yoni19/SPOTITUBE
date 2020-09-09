class UserAdd < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :is_admin, :boolean, default: false
  end
end
