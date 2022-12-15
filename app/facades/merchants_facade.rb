class MerchantsFacade
  def initialize(params)
    @merchant_id = params[:id]
    @query_params = params[:q]
  end

  def merchants
    service.merchants[:data].map do |data|
      Merchant.new(data)
    end
  end

  def merchant
    data = service.merchant(@merchant_id)[:data]
    merchant = Merchant.new(data)
  end

  def merchant_items
    service.merchant_items(@merchant_id)[:data].map do |data|
      Item.new(data)
    end
  end

  def search_merchants
    data = service.search_merchants(@query_params)[:data]
    Merchant.new(data)
  end

  def service 
    EstyShopService.new
  end
end