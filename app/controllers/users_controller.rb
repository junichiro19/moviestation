class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update ]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "会員登録が完了しました"
    else
      render 'new'
    end
  end
  
  def show
    
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to @user , notice: 'user info update'
    else
      redirect_to 'edit'
    end
  end
  
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
end
