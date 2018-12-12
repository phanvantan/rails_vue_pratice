class Api::UsersController < Api::ApplicationController
  before_action :find_user, except: [:index, :create]

  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.create user_params
  end

  def update
    @user.update_attributes user_params
  end

  def destroy
    @user.destroy
  end

  private
  def find_user
    @user = User.find_by id: params[:id]
    render_404 unless @user
  end

  def user_params
    params.require(:user).permit :name, :email, :actived
  end
end
