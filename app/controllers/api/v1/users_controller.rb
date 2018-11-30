class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show, :test]
  before_action :set_user, only: [:show, :update, :destroy]

  def profile
    # byebug
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # render json: { user: UserSerializer.new(@user) }, status: :accepted
  end



  def index
   @users = User.all
   render json: @users, status: :ok
  end

  # POST /users
  def create
    @user = User.create(user_params)
      if @user.valid?
         @token = encode_token(user_id: @user.id)
       render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
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
