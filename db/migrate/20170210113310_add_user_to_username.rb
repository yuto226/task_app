class AddUserToUsername < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string,:default => "名無しさん"
    add_column :users, :locals, :string
    add_column :users, :birthday, :string
  end
end
