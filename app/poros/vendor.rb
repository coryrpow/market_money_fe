class Vendor
  attr_reader :vendor_id,
              :name,
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted
             

  def initialize(attributes)
    # require 'pry';binding.pry
    @vendor_id = attributes[:relationships][:markets][:data][0][:id]
    @name = attributes[:attributes][:name]
    @description = attributes[:attributes][:description]
    @contact_name = attributes[:attributes][:contact_name]
    @contact_phone = attributes[:attributes][:contact_phone]
    @credit_accepted = attributes[:attributes][:credit_accepted]
    
  end

end