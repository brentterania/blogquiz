class WelcomeController < ApplicationController
  def index
    
  end
 
  def show
    
  end
  
  def create
    @user = user.new(params[:username])
    if @user.save
      flash[:notice] = "Login Succesfully!"
      flash[:color]= "valid"
	  redirect_to @article
    else
      flash[:notice] = "Credentials is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end
end
