require_relative 'spec_helper'

describe "Testing FarMar::Product" do

  let (:new_product){
    FarMar::Product.new(["8193", "Cruel Beef", "2690"])
  }

  let (:product_all){
    FarMar::Product.all
  }

  it "Testing to see if I can create a new instance of product" do
    expect(new_product).must_be_instance_of(FarMar::Product)
  end

  it "Testing to see if I can return all product instances" do
    expect(product_all.length).must_equal(8193)
  end

  it "Testing to see if I can return a specific product instance" do
    test3 = FarMar::Product.find("8193")
    expect(test3.class).must_equal(FarMar::Product)
  end

end
