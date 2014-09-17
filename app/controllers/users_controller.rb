class UsersController < ApplicationController
  load_and_authorize_resource 
  def new

    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def index
     authorize! :create, User
   @user = User.all
  end

  def edit
     @user = User.find(params[:id])
  end

  def update

      @user = User.find(params[:id])
  
 
      if @user.update_attributes(params[:user])
         redirect_to users_path
      
          
      end
     

  end

end
