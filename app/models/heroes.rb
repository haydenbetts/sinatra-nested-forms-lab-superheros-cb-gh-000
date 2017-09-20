class Heroes
  attr_accessor :name, :power, :biography

  # expect input to be a hash
  # test hash: hash = {:power => "short", :name => "hayden", :biography=>"n/a"}
  def initialize(attr)
    @name = attr[:name]
    @power = attr[:power]
    @biography = attr[:biography]
  end

end
