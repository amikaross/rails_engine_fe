class MerchantsFacade
  def initialize(merchant_id=nil)
    @merchant_id = merchant_id
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

  def service 
    EstyShopService.new
  end
end