class ItemsController < ApplicationController
  def show
    @facade = ItemsFacade.new(params[:id])
  end
end