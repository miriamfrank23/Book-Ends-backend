class Api::V1::UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]

  def index
   @users = User.all
   render json: @users, status: :ok
  end

  # POST /users
  def create
    @user = User.create(user_params)
      if @user.valid?
       render json: { user: UserSerializer.new(@user) }, status: :created
      else
       render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  # GET /users/:id
  def show
   render json: @user, status: :ok
  end

  # PUT /users/:id
  # def update
  #  @user.update(user_params)
  #  head :no_content
  # end

  # DELETE /users/:id
  def destroy
   @user.destroy
   head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def set_user
   @user = User.find(params[:id])
  end

end
