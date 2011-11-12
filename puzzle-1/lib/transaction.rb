class Transaction < Struct.new(:store, :sku, :raw_price)
  def price
    raw_price.match(/(.*)\s/)[1].to_f
  end
end
