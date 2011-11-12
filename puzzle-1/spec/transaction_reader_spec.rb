require "transaction_reader"

describe "TransactionReader#read" do

  let(:transactions) { TransactionReader.new('~/Downloads/SAMPLE_TRANS.csv').read }

  it "returns an array of transactions" do
    transactions.should have(5).items
    transactions.first.should == Transaction.new('Yonkers','DM1210','70.00 USD')
    transactions.last.should == Transaction.new('Camden','DM1182','54.64 USD')
  end
end
