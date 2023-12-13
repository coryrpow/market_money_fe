class BackEndService
  def get_markets
    get_url('/api/v0/markets')
  end
  
  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
  
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end
end