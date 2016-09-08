require_relative 'spec_helper'

describe "Testing FarMar::Sale" do

  let (:new_sale){
    FarMar::Sale.new(["12001", "8923.0", "2013-11-12 02:03:31 -0800", "2690", "8192"])
  }

  let (:sale_all){
    FarMar::Sale.all
  }

  it "Testing to see if I can create a new instance of sale" do
    expect(new_sale).must_be_instance_of(FarMar::Sale)
  end

  it "Testing to see if I can return all sale instances" do
    test2 = FarMar::Sale.all
    expect(sale_all.length).must_equal(12002) #ORLY? 12798 INSTEAD???
  end

  it "Testing to see if I can return a specific sale instance" do
    test3 = FarMar::Sale.find("00")
    expect(test3.class).must_equal(FarMar::Sale)
  end

end
