class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def current_user
  	if session[:user_id]
      @current_user ||= User.find(session[:user_id])
  	end
  end

  helper_method :current_user

  def authorize
  	redirect_to login_path unless current_user
  end


  # def initialize_wordnik(options={})
  #     options.merge!({:api_key=>ENV['ecf11c4c47818e7ccc4050ae67c0ce0afe2eb985bb5fbc8b4']})
  #     @wordnik = Wordnik::Wordnik.new(options)
  # end


end
