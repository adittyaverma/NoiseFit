class UserCoupon < ActiveRecord::Base
	belongs_to :users
	belongs_to :coupons
end
