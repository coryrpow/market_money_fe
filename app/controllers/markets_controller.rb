class MarketsController < ApplicationController

  def index
    @markets = facade.markets 
    # require 'pry';binding.pry

  end

  def show

  end


  private

  def facade
    MarketFacade.new
  end
end