class UsersController < ApplicationController

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
end



end
