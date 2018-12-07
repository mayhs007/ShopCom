class HomeController < ApplicationController
    require 'base64'
    skip_before_filter :verify_authenticity_token
    layout 'main'
    def home
    end
    def products
        @product=Item.all


    end 
    def cart
        @product=Cart.new
        @user=Item.find_by_item_id(params['item'])
        @product.user_name = session[:user_id] 
        @product.item_name = @user.item_name
        @product.item_price = @user.item_price
        @product.item_uploadedby = @user.item_uploadedby
        @product.item_qty=params['qty']
        if @product.save
            redirect_to  :controller => 'home', :action => 'products' 
        end
    end
    
    def payment
    end
    
    def item
    end
    
    def edit
    end
end
