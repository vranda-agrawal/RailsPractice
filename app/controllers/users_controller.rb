class UsersController < ApplicationController
  def index
    @users = User.all
  end

  #GET /products/1 or /products/1.json
  def show
    @user= User.find(params['id'])  
  end

  #GET /products/new
  def new
    @user = User.new
  end

  #GET /products/1/edit
  def edit
    @user= User.find(params['id'])  
  end

  #POST /products or /products.json
  def create
    puts "-----------------------------------------------------------------------------"
    @user=User.create(user_params)
    if @user.valid?
      redirect_to '/users'
    else 
      redirect_to '/users/new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name,role_ids: [])
  end

end
