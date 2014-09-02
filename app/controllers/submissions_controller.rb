class SubmissionsController < ApplicationController

	before_action :authenticate_user!

	def index
		@submissions = current_user.submissions
	end

	def new
	end

	def create
		submission = current_user.submissions.create!
		params["submission"].each do |q,choice_index|
			submission.answers.create! choice: choice_index
		end
		flash[:success] = 'داده با موفقیت ثبت شد. منتظر اعلام نتایج باشید.'
		return redirect_to submissions_path
	end

	def destroy
	end
end
