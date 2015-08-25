class UserController < ApplicationController
  def login
    if request.post?
    	user = User.where(:username => params[:username]).first
	unless user.blank?
		if user.password_hash == params[:password_hash]
		session[:user_id] = user.id
		redirect_to "/"
		end
	end
    end
    session[:user_id] = nil
  end
end
