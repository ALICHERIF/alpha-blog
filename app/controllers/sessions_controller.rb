class SessionsController < ApplicationController


def new
end
def create
user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id
flash[:notice] = "successful login "
redirect_to user
  else
    flash.now[:alert] = "there was something wrong with your login details "
    render 'new'
    #binding.break
  end
end
def destroy
  session[:user_id] = nil
  #binding.break
flash[:notice] = "successful logout "
redirect_to root_path
end

end
