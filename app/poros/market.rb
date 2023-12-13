class Market
  attr_reader :market_id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lat,
              :lon

  def initialize(attributes)
    @market_id = attributes[:id]
    @name = attributes[:attributes][:name]
    @street = attributes[:attributes][:street]
    @city = attributes[:attributes][:city]
    @county = attributes[:attributes][:county]
    @state = attributes[:attributes][:state]
    @zip = attributes[:attributes][:zip]
    @lat = attributes[:attributes][:lat]
    @lon = attributes[:attributes][:lon]
  end

  # def format_address


  # end

end