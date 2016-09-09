require_relative 'spec_helper'

describe "Testing FarMar::Sale" do

  let (:new_sale){FarMar::Sale.new(["12001", "8923.0", "2013-11-12 02:03:31 -0800", "2690", "8192"])}

  let (:sale_all){FarMar::Sale.all}

  let (:begin_time){("2013-11-08 19:38:09 -0800")}

  let (:end_time){("-0800, 2013-11-12 02:03:31 -0800")}


  it "1 Testing to see if I can create a new instance of sale" do
    expect(new_sale).must_be_instance_of(FarMar::Sale)
  end

  it "2 Testing to see if I can return all sale instances" do
    test2 = FarMar::Sale.all
    expect(sale_all.length).must_be_instance_of(Fixnum)
  end

  it "3 Testing to see if I can return a specific sale instance" do
    test3 = FarMar::Sale.find("00")
    expect(test3.class).must_equal(FarMar::Sale)
  end

  it "4 Testing to see if vendor method works" do
    test4 = new_sale.vendor
    expect(test4).must_be_instance_of(FarMar::Vendor)
    expect(test4.class).must_be_instance_of(Class)
  end

  it "5 Testing to see if product method works" do
    test5 = new_sale.product
    expect(test5).must_be_instance_of(FarMar::Product)
    expect(test5.class).must_be_instance_of(Class)
  end

  it "6 Testing to see if self.between method returns a collection of items in the specified time range" do
    expect(FarMar::Sale.between(begin_time, end_time).class).must_be_instance_of(Class)
    expect(FarMar::Sale.between(begin_time, end_time).length).must_be_instance_of(Fixnum)
  end

  # market_info.each_value {|object| object.class.must_equal FarMar::Market}

end
