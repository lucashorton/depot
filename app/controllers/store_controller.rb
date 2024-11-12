class StoreController < ApplicationController
  def index
    if session[:visit_count].nil?
      session[:visit_count] = 1
    else
      puts session[:visit_count]
      session[:visit_count] = session[:visit_count] + 1
    end
    @visit_count = session[:visit_count]
    @products = Product.order(:title)
  end
end
