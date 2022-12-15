class ItemsFacade 
  def initialize(item_id=nil)
    @item_id = item_id
  end

  def item
    data = service.item(@item_id)[:data]
    item = Item.new(data)
  end

  def service 
    EstyShopService.new
  end
end