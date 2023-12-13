class MarketFacade
  # attr_reader :market

  # def initialize
  #   @market = market
  # end

  def markets
    json = service.get_markets
    # require 'pry';binding.pry
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end



  def service
    BackEndService.new
  end
end