class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :desc
      t.integer :points
      t.boolean :status

      t.timestamps null: false
    end
  end
end
