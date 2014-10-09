class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to dashboard_user, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out!"
  end

  def dashboard_user
    return render "errors/404" unless current_user
    @user = current_user
  end
end
