require_relative 'spec_helper'

describe "Testing FarMar::Markets" do

  it "Testing to see if I can create a new instance of market" do
    test1 = FarMar::Market.new("500", "Montefiore Medical Center Farmers Market_Thursday", "111 E. 210th Street", "Bronx", "Bronx", "New York", "10467")
    expect(test1).must_be_instance_of(FarMar::Market)
  end

  it "Testing to see if I can return all market instances" do
    test2 = FarMar::Market.all
    expect(test2.length).must_equal(500)
  end

  it "Testing to see if I can return a specific market instance" do
    test3 = FarMar::Market.find("500")
    expect(test3.class).must_equal(Array)
  end

end
