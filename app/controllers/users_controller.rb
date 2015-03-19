class UsersController < ApplicationController


	def index
	end

	def new
		@user = User.new
		redirect_to flashcards_path if current_user
	end


	def create
		@user = User.new(user_params)
		if @user.save
			# session[:user_id] = @user.id
			redirect_to flashcards_path		
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@flashcards = @user.flashcards(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

private
	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end








