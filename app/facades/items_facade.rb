class ItemsFacade 
  def initialize(item_id=nil)
    @item_id = item_id
  end

  def items
    service.items[:data].map do |data|
      Item.new(data)
    end
  end

  def item
    data = service.item(@item_id)[:data]
    item = Item.new(data)
  end

  def service 
    EstyShopService.new
  end
end