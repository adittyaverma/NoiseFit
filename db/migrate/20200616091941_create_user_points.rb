class CreateUserPoints < ActiveRecord::Migration
  def change
    create_table :user_points do |t|
      t.integer :user_id
      t.integer :points
      t.boolean :status

      t.timestamps null: false
    end
  end
end
