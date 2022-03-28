class SessionsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies_path
    else
      flesh.now[:alert] = 'Are you a Guru? Verify your Email and Password please'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successful'
    redirect_to login_path
  end

  private

  def cookies_path
    cookies.delete(:intended_url) || tests_path
  end

end
