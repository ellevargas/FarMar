require_relative 'spec_helper'

describe "Testing FarMar::Vendor" do

  let (:new_vendor){
    FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
  }

  let (:vendor_all){
    FarMar::Vendor.all
  }

  it "1 Testing to see if I can create a new instance of vendor" do
    expect(new_vendor).must_be_instance_of(FarMar::Vendor)
  end

  it "2 Testing to see if I can return all vendor instances" do
    expect(vendor_all.length).must_equal(2690)
  end

  it "3 Testing to see if I can return a specific vendor instance" do
    test3 = FarMar::Vendor.find("2690")
    expect(test3.class).must_equal(FarMar::Vendor)
  end

  it "4 Testing to see if market method works" do
    test4 = new_vendor.market
    expect(test4).must_be_instance_of(FarMar::Market)
    expect(test4.name).must_equal("Montefiore Medical Center Farmers Market_Thursday")
  end

  it "5 Testing to see if products method works" do
    test5 = new_vendor.products
    expect(test5).must_be_instance_of(Array)

  end

  it "6 Testing to see if sale method works" do
    test6 = new_vendor.sales
    expect(test6).must_be_instance_of(Array)
  end

  it "7 Testing to see if revenue method works" do
    test7 = FarMar::Vendor.find("1")
    expect(test7.revenue.class).must_equal(Fixnum)
    expect(test7.revenue).must_equal(38259)
  end

  it "8 Testing to see if self.by_market method works" do
    expect(FarMar::Vendor.by_market("2").class).must_equal(Array)
  end

end
