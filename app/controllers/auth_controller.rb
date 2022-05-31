class AuthController < ApplicationController
  def register
  end

  def signup
    user = User.new(params.permit(
      :name,
      :email,
      :password
    ))
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to register_path
    end
  end

  def login
  end

  def signin
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
