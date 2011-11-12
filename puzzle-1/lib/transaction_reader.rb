class TransactionReader
  require "csv"
  require "transaction"

  def initialize(transaction_file_name)
    @transaction_file_name = transaction_file_name
  end

  def read
    @transactions ||= CSV.open(File.expand_path @transaction_file_name).map { |row| Transaction.new *row }[1..-1]
  end
end
