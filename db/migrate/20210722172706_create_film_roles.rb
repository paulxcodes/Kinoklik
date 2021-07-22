class CreateFilmRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :film_roles do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
