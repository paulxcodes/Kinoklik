class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :subscription, :string
    add_column :users, :is_filmmaker, :boolean
    add_column :users, :wants_newsletter, :boolean
    add_column :users, :language, :string
    add_column :users, :is_affiliate, :boolean
    add_column :users, :biography, :text
  end
end
