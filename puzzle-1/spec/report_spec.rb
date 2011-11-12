require File.expand_path('../../lib/report', __FILE__)
require File.expand_path('../../lib/transaction_reader', __FILE__)

describe Report do

  let(:transaction_reader) { TransactionReader.new('~/Downloads/SAMPLE_TRANS.csv') }

  it ".new reads the transactions with the passed TransactionReader" do
    transaction_reader.should_receive :read

    Report.new transaction_reader
  end

  describe "#total_sales(sku)" do

    it "returns the total price in US$" do
      Report.new(transaction_reader).total_sales("DM1210").should == 138.76
    end

    it "returns the total price in US$ even when the transaction are in different currency" do
      Report.new(transaction_reader).total_sales("DM1182").should == 134.23
    end

  end

end
