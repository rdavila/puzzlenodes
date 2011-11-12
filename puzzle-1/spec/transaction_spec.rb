require File.expand_path('../../lib/transaction', __FILE__)

describe Transaction do
  it "#price returns the numeric part of the raw price" do
    transaction = Transaction.new 'store', 'xxx', '89.6 US$'
    transaction.price.should == 89.6
  end
end
