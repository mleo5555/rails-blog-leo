class UsersController < ApplicationController

  def new
    render 'new'
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to '/login'
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def get_login
    render 'get_login'
  end

  def login
    user = User.find_by(username: params[:user][:username].downcase)
    user.authenticate(params[:user][:password])
    if user != nil
      session[:user_id] = user.id
      redirect_to '/'
    else
      @error = "The credentials you provided didn't match our records. Please try again."
      render '/get_login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

  def show
    if current_user
      @user = User.find(params[:id])
      render 'show'
    else
      redirect_to '/'
    end
  end

end
