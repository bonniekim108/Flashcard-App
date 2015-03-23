class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(username: params[:user][:username]) 
		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id.to_s 
			redirect_to user_path(current_user.id)
		else
			flash.now[:danger] = "Username or password incorrect."
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
	
end

