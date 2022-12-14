class MerchantsController < ApplicationController 
  def index 
    @facade = MerchantsFacade.new
  end

  def show 
    @facade = MerchantsFacade.new(params[:id])
  end
end