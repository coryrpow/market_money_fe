class MarketsController < ApplicationController

  def index
    facade = MarketFacade.new
    @markets = facade.markets 
    # require 'pry';binding.pry

  end

  def show
    # @market_id = Market.find(params[:id])
    @market = facade.merchant
  end


  private

  def facade
    MarketFacade.new(params[:id])
  end
end