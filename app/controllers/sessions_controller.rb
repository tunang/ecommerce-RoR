class SessionsController < ApplicationController
  def new; end

  def create
    #1. Check if user exist or not
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      reset_session
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      log_in user
      redirect_to user #redirect to show controller of this instance
    else
      flash.now[:danger] = 'Invalid email/password'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy; end
end
