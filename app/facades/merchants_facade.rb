class MerchantsFacade
  def initialize(merchant_id=nil, query_params)
    @merchant_id = merchant_id
    @query_params = query_params
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