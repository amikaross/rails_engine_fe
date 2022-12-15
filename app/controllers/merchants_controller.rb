class MerchantsController < ApplicationController 
  def index 
    @facade = MerchantsFacade.new(params[:q])
  end

  def show 
    @facade = MerchantsFacade.new(params[:id], nil)
  end
end