class MarketsController < ApplicationController

  def index
    facade = MarketFacade.new
    @markets = facade.markets 
    
  end
  
  def show
    # require 'pry';binding.pry
    facade = MarketFacade.new
    @market = facade.market(params[:id])
    @vendors = facade.vendors(params[:id])
    # require 'pry';binding.pry
    # @vendor_name = VendorFacade.new.vendor(params)
  end


  private

  # def facade
  #   MarketShowFacade.new(params[:id])
  # end
end