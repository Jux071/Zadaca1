class Store
  attr_accessor :name, :street, :website, :phones

  def initialize (name, street, website, phones)
    @name = name
    @street = street
    @website = website
    @phones = phones
  end

  def to_s
    "************************************\nName: #{name} \nStreet: #{street} \nWebsite: #{website} \nTotal Phones: #{phones}"
  end

end