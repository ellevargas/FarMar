require_relative 'spec_helper'

describe "Testing FarMar::Vendor" do

  let (:new_vendor){
    FarMar::Vendor.new(["2690", "Mann-Lueilwitz", "4", "500"])
  }

  let (:vendor_all){
    FarMar::Vendor.all
  }

  it "Testing to see if I can create a new instance of vendor" do
    expect(new_vendor).must_be_instance_of(FarMar::Vendor)
  end

  it "Testing to see if I can return all vendor instances" do
    expect(vendor_all.length).must_equal(2690)
  end

  it "Testing to see if I can return a specific vendor instance" do
    test3 = FarMar::Vendor.find("2690")
    expect(test3.class).must_equal(FarMar::Vendor)
  end

end
