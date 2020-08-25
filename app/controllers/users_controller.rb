class UsersController < ApplicationController
  #before_action :set_user, only: [:new, :create, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Usuario registrado Correctamente"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
