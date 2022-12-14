class EstyShopService 
  def merchants
    get_url("http://localhost:3000/api/v1/merchants")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end