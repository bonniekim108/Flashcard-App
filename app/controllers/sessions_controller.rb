class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:user][:email])

		if user && user.authenticate(params[:user][:password])
			flash[:info] = "You logged in successfully!"
			session[:user_id] = user.id.to_s 
			redirect_to flashcards_path
		else
			flash.now[:alert] = "Username or password incorrect."
			render :new
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end
end

