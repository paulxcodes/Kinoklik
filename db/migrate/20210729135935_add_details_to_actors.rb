class AddDetailsToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :biography, :text
  end
end
