class RemoveAdminIdFromArticle < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :admin_id, :string
    add_column :articles, :admin_id, :integer

  end
end
