class UsersController < ApplicationController

	
	def show
		@user = User.find(params[:id])
	end

	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation))

		if @user.save
			redirect_to_root_path
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end



end




