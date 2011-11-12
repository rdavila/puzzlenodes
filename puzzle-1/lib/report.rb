class Report

  def initialize(transaction_reader, price_converter)
    @transactions    = transaction_reader.read
    @price_converter = price_converter
  end

  def total_sales(sku)
    sku_transactions = @transactions.select { |t| t.sku == sku }
    sku_transactions.inject(0.0) { |total, t| total + @price_converter.convert_to("US$", t.price, t.currency)}
  end
end
