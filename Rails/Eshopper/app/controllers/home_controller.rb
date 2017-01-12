class HomeController < ApplicationController
  def index
     @banners = Banner.all
     # @category = nil
     # binding.pry
     # @categories = Category.find(:all, :conditions => {:parent_id => nil } )
     @categories = Category.all.where(parent_id: nil)
  end
end
