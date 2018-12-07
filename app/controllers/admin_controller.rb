class AdminController < ApplicationController
    skip_before_filter :verify_authenticity_token
    require 'base64'
    layout 'admin'
    def upload
        @product=Type.all
    end
 def insert
    @user=Item.new
    @user.item_name =params['item_name'] 
    @user.item_category =params['item_category'] 
    @user.item_price =params['item_price']
    @user.item_quantity  =params['item_quantity']
    @user.item_uploadedby =session[:user_id]
    @user.item_pic = params['item_pic']
    @user.item_description  =params['item_description']
    if @user.save
    redirect_to  :controller => 'admin', :action => 'upload' 
    end
 end

    def payment
        @item = Cart.all
    end
 
    def type
        @product=Type.all
      
    end
 
    def view
    end
    def uptype
        @user=Type.new
        @user.name =params['type'] 
        @user.tid =params['type'] 
        if @user.save
            redirect_to :controller => 'admin', :action => 'type'
        end

    end
    def logout
        session[:user_id] = nil
        redirect_to  :controller => 'com', :action => 'login' 
     end 
    
    
end
