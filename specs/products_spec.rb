require_relative 'spec_helper'

describe "Testing FarMar::Product" do

  it "Testing to see if I can create a new instance of product" do
    test1 = FarMar::Product.new("8193", "Cruel Beef", "2690")
    expect(test1).must_be_instance_of(FarMar::Product)
  end

  it "Testing to see if I can return all product instances" do
    test2 = FarMar::Product.all
    expect(test2.length).must_equal(8193)
  end

  it "Testing to see if I can return a specific product instance" do
    test3 = FarMar::Product.find("8193")
    expect(test3.class).must_equal(Array)
  end

end
