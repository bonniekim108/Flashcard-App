class UsersController < ApplicationController


	
	def show
		@user = User.find(params[:id])
	
	end

	def index
		@user = User.new
	end


	def create
		@user = User.new(params.require(:user).permit(:username, :email, :password, :password_confirmation))


		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to flashcards_path
		else
			render :index
		end
	end

	def edit
		@user = User.find(params[:id])
	end


	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end








