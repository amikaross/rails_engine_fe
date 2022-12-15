class ItemsController < ApplicationController
  def index 
    @facade = ItemsFacade.new
  end

  def show
    @facade = ItemsFacade.new(params[:id])
  end
end