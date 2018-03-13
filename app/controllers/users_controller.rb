class UsersController < ApplicationController
  def login
    if logged_in?
      redirect_to day_lives_path
      return
    end
    @user = User.find_by_username(params[:users][:username].downcase)
    if @user && (@user.password == params[:users][:password])
      log_in @user
      # render html: [logged_in?, session[:user_id], user]
      redirect_to day_lives_path
    else
      flash.now[:invalid] = 'Tên đăng nhập hoặc mật khẩu không đúng.'
      render users_showlogin_path
    end
  end

  def showlogin
  end

  def log_in(user)
    session[:user_id] = user.id #lưu trong session id bởi user-id
  end
  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
      !current_user.nil?
  end
  def log_out
      session.delete(:user_id)
      @current_user = nil
  end
end
