class UserdetailController < ApplicationController
    skip_before_filter :verify_authenticity_token
     def signup
        @user=Userdetail.new
        @add=Address.new
        @user.username =params['user_name'] 
        @user.fname =params['first_name'] 
        @user.lname =params['last_name']
        @user.email =params['email']
        @user.phone =params['phone']
        @add.username =params['user_name']
        @add.address1 =params['address1']
        @add.address2 =params['address2']
        @add.city =params['city']
        @add.state =params['state']
        @add.pincode =params['pincode']
        @user.password = BCrypt::Password.create(params['password'])
        if @user.save && @add.save
          session[:user_id] = @user.username
          redirect_to  :controller => 'home', :action => 'home' 
        else
          redirect_to  :controller => 'com', :action => 'login' 
    end
  end
  def login
    user = Userdetail.find_by_email(params["email"])
    if user == nil
      admin =Admindetail.find_by_email(params["email"])
      email=params["email"]
      password=params["password"]
      if email == admin.email && BCrypt::Password.new(admin.password) == password
        session[:user_id] = admin.adminname
        redirect_to :controller => 'admin', :action => 'upload'
      else
        redirect_to :controller => 'com', :action => 'login' 
      end
    else
      email=params["email"]
      password=params["password"]
      if email == user.email && BCrypt::Password.new(user.password) == password
      session[:user_id] = user.username
      redirect_to :controller => 'home', :action => 'home' 
      else
      redirect_to :controller => 'com', :action => 'login' 
      end
    end
  end  
 
  def logout
    session[:user_id] = nil
    redirect_to  :controller => 'com', :action => 'login' 
  end
  def home
  end
    
end
