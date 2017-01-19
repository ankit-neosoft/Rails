class HomeController < ApplicationController
  def index
     @banners = Banner.all
     # @category = nil
     # binding.pry
     # @categories = Category.find(:all, :conditions => {:parent_id => nil } )
     @categories = Category.all.where(parent_id: nil)
     @category = Category.first
     @subcategory = @category.subcategories.last
     @products = @subcategory.products
     @order_item = OrderItem.new
  end
end
