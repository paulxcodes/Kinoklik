class AddUserIdToActor < ActiveRecord::Migration[6.0]
  def change
    add_reference :actors, :user, null: false, foreign_key: true
  end
end
