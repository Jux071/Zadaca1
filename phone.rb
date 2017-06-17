require_relative 'product'

class Phone < Product
  attr_accessor :specs

  def initialize (model, price, in_stock, specs)
  	super(model, price, in_stock)
  	@specs = specs
  end 

  def to_s
  	new_specs = specs.map { |k, v|"#{k}: #{v}" }
  	"#{super.to_s}Specs: \n        #{new_specs.map(&:inspect).join("\n        ").to_s.gsub('"', '')}\n------------------------------------"
  end

end
