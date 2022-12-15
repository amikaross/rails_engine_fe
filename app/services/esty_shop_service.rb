class EstyShopService 
  def merchants
    get_url("http://localhost:3000/api/v1/merchants")
  end

  def merchant(id) 
    get_url("http://localhost:3000/api/v1/merchants/#{id}")
  end

  def merchant_items(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}/items")
  end

  def item(id)
    get_url("http://localhost:3000/api/v1/items/#{id}")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end