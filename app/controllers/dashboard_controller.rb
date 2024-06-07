class DashboardController < ApplicationController
  def index
    @products = Product.all
    respond_to do |format|
      format.html
    end
    @users = User.all
    respond_to do |format|
      format.html
    end
  end
end
