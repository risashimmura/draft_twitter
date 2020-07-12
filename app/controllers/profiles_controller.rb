class ProfilesController < ApplicationController
	before_action :authenticate_user!

	def new 
		@profile = Profile.new


		@profile = Profile.new(profile_params)
		# @profile.user = current_user
		if @profile.save
			flash[:success] = "Success! Your profile has been created."
			redirect_to
		else
			p @profile.errors.inspect
			render 'new'
	end
end

def profile_params
	params.require(:profile).permit(:first_name, :last_name, :age)