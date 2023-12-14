class MarketFacade
  attr_reader :market

  def initialize(id)
    @market = market(id)
  end

  def markets
    json = service.get_markets
    # require 'pry';binding.pry
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def market(id)
    json = service.get_market_details(@market)

    Market.new(json[:data])
  end



  def service
    BackEndService.new
  end
end