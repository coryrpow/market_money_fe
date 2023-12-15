class MarketFacade
  # attr_reader :markets

  # def initialize
  #   @markets = markets
  # end

  def markets
    json = service.get_markets
    # require 'pry';binding.pry
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def market(id)
    json = service.get_market_details(id)
# require 'pry';binding.pry
    Market.new(json[:data])
  end

  
  def vendors(id)
    json = service.get_market_vendors(id)
    json[:data].map do |vendor_data|
      # require 'pry';binding.pry
    Vendor.new(vendor_data)
    end
  end
  # json[:data][0][:relationships][:markets][:data][0][:id]
  # to get to vendor_id
  
  # def vendors(id)
  #   json = service.get_market_vendors(id)
  #   # require 'pry';binding.pry
  #   json[:data].map do |vendor_data|
  #   Vendor.new(vendor_data)
  # end


  def service
    BackEndService.new
  end
end