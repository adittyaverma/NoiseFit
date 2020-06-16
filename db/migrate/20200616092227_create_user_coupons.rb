class CreateUserCoupons < ActiveRecord::Migration
  def change
    create_table :user_coupons do |t|
      t.integer :user_id
      t.integer :coupon_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
