class Market
  attr_reader :name,
                   :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    vendor_names = []
    @vendors.flat_map do |stock|
      stock.inventory.map do |inventory|
      vendor_names << @vendors if inventory == item
      end
    end
    vendor_names
  end
end
