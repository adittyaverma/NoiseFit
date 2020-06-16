class CommonController < ApplicationController
	def index
		puts "#{current_user.inspect} ======"
		@point = current_user.try(:user_point)
		@user_coupons = current_user.try(:user_coupons)
		@coupons = Coupon.all
	end

	def earn_point
		if params[:steps].present?
			user_point = current_user.user_point
			if user_point.present? 
				user_point.update_attributes!(points: user_point.points + params[:steps].to_i)
			else
				UserPoint.create!(user_id: current_user.id, status: 1, points: params[:steps].to_i)
			end
			redirect_to "/"
		end
	end

	def claim_point
		if params[:coupon_id].present?
			UserCoupon.create!(user_id: current_user.id, coupon_id: params[:coupon_id], status: 1)
			user_point = current_user.user_point
			user_point.update_attributes!(points: user_point.points - params[:points].to_i)
			redirect_to "/"
		end
	end

	def show_user_coupon
		@coupons = current_user.user_coupons
	end

end
