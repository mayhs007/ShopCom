class AdmindetailController < ApplicationController
    def signup
        @user=Admindetail.new
        @add=Address.new
        @user.adminname =params['admin_name'] 
        @user.fname =params['first_name'] 
        @user.lname =params['last_name']
        @user.email =params['email']
        @user.phone =params['phone']
        @add.username =params['admin_name']
        @add.address1 =params['address1']
        @add.address2 =params['address2']
        @add.city =params['city']
        @add.state =params['state']
        @add.pincode =params['pincode']
        @user.password = BCrypt::Password.create(params['password'])
        if @user.save && @add.save
          session[:user_id] = @user.adminname
          redirect_to  :controller => 'admin', :action => 'main' 
        else
          redirect_to  :controller => 'com', :action => 'login'
    end
  end
    
end
