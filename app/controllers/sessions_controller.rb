class SessionsController < ApplicationController
  def signup
    @user=Userdetail.new
    @user.username =params['user_name'] 
    @user.fname =params['first_name'] 
    @user.lname =params['last_name']
    @user.email =params['email']
    @user.password_digest =BCrypt::Password.create(params['password'])
    if @user.save
      session[:user_id] = @user.username
      redirect_to  :controller => 'home', :action => 'home' 
    else
      redirect_to '/login'
    end
  end
  def login
    user = Userdetail.find_by_email(params[:email])
    pwd=BCrypt::Password.create(params[:password])
    if user && user.authenticate(pwd)
      session[:user_id] = user.name
      redirect_to  :controller => 'home', :action => 'home' 
    else
      redirect_to '/login'
    end
  end  
  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
  def home
  end
  
  
  
  #def create
   # user=Userdetail.find_by_email(params[:email])
   # if user && user.authenicate(params[:password])
    #  session[:username]=user.name
    #  redirect_to :controller => 'com', :action => 'home'
    #else 
    #  render :login
    #end
 # end
 # def destroy
 #    session[:username]= nil
  #   redirect_to :controller => 'com', :action => 'home'
 # end
#=end
end
