class BackEndService
  def get_markets
    get_url('/api/v0/markets')
  end

  def get_market_details(id)
    get_url("/api/v0/markets/#{id}")
  end

  def get_market_vendors(id)
    get_url("/api/v0/markets/#{id}/vendors")
  end

  def get_vendor_details(id)
    get_url("/api/v0/vendors/#{id}")
  end
  
  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end
end