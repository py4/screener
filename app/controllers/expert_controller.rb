class ExpertController < ApplicationController
	http_basic_authenticate_with name: "expert", password: "expert"

	def index
		@submissions = Submission.includes(:user).all
	end

	def show
	end

	def destroy
	end

	def update
		submission = Submission.where(id: params[:id]).first
		unless submission
			flash[:error] = 'تست یافت نشد.'
		else
			result = (params[:result] == "true" ? true : false)
			submission.update_attributes! doctor_result: result
			flash[:success] = 'نظر شما با موفقیت ثبت شد.'
		end
		return redirect_to expert_path
	end
end
