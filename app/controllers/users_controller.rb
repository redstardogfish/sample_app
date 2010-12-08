class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => {:success => "Welcome to the sample app!"}
    else
    @title = "Sign up"  
    render 'new'
    end
  end
  
  def edit
    @title = "Edit user"
    @user = User.find(params[:id])
  end
  
  def update
    @title = "Edit user"
    @user = User.find(params[:id])  
    if @user.update_attributes(params[:user])  
      redirect_to @user, :flash => {:success => "Profile updated."}
    else
      render 'edit'
    end
  end

end
