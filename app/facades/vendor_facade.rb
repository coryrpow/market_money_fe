class VendorFacade
  # attr_reader :market

  # def initialize(id)
  #   @market = market(id)
  # end

  def vendor(id)
    json = service.get_vendor_details(id)
# require 'pry';binding.pry
    Vendor.new(json[:data])
  end



  def service
    BackEndService.new
  end
end
