class Coupon < ActiveRecord::Base
	has_many :user_coupons
end
