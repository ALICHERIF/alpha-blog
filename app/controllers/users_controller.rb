class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update,:destroy]
before_action :require_user, only: [:edit, :update]
    before_action :require_same_user, only: [:edit, :update,:destroy]
    def show

@articles = @user.articles.paginate(page: params[:page], per_page:3)
    end
    def index
      @users = User.paginate(page: params[:page], per_page:3)
    end
    def new
      @user = User.new
    end

    def edit

    end
    def update

      if @user.update(user_params)
        flash[:notice] = "User has been updated successfully."
        redirect_to @user
      else
        render :edit, status: :unprocessable_entity
      end
    end
    def create
      @user = User.new(user_params)
          if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "#{@user.username} has created successfully."
            #binding.break
            redirect_to articles_path
          else
            render :new
          end
    end
    def destroy
@user.destroy
session[:user_id] = nil if @user == current_user
flash[:notice] = "User has been deleted and all articles your article has been delete  successfully."
redirect_to articles_path
    end


private
      def user_params
        params.require(:user).permit(:username, :email, :password)
      end
def set_user
@user = User.find(params[:id])
end
  def require_same_user
    if current_user != @user && !current_user.admin?
      flash[:alert] = "you can only edit or delete your only article"
      redirect_to @user
    end
  end
end
