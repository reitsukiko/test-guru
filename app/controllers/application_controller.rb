class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_filter do 
    redirect_to admin_tests_path if current_user.admin?
  end

end
