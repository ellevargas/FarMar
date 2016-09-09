require_relative 'spec_helper'

describe "Testing FarMar::Product" do

  let (:new_product){FarMar::Product.new(["8193", "Cruel Beef", "2690"])}

  let (:new_product2){FarMar::Product.new(["8187", "Gorgeous Chicken", "2689"])}

  let (:product_all){FarMar::Product.all}

  it "1 Testing to see if I can create a new instance of product" do
    expect(new_product).must_be_instance_of(FarMar::Product)
  end

  it "2 Testing to see if I can return all product instances" do
    expect(product_all.length).must_equal(8193)
  end

  it "3 Testing to see if I can return a specific product instance" do
    test3 = FarMar::Product.find("8193")
    expect(test3.class).must_equal(FarMar::Product)
  end

  it "4 Testing to see if vendor method works" do
    test4 = new_product.vendor
    expect(test4).must_be_instance_of(FarMar::Vendor)
    expect(test4.class).must_be_instance_of(Class)
  end

  it "5 Testing to see if sales method works" do
    test5 = new_product.sales
    expect(test5).must_be_instance_of(Array)
  end

  it "6 Testing to see if number_of_sales returns a Fixnum" do
    test6 = new_product.number_of_sales
    expect(test6).must_be_instance_of(Fixnum)
    #returned 1
  end

  it "7 Testing to see if number_of_sales returns a Fixnum with a different product" do
    test7 = new_product2.number_of_sales
    expect(test7).must_be_instance_of(Fixnum)
    #return 0, so fixnum is working correctly
  end

  it "8 Testing to see if self.by_vendor method works" do
    expect(FarMar::Product.by_vendor("2690").class).must_equal(Array)
  end

end
