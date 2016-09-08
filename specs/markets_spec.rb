require_relative 'spec_helper'

describe "Testing FarMar::Market" do

  let (:new_market){
    FarMar::Market.new(["500", "Montefiore Medical Center Farmers Market_Thursday", "111 E. 210th Street", "Bronx", "Bronx", "New York", "10467"])
  }

  let (:market_all){
    FarMar::Market.all
  }

  it "Testing to see if I can create a new instance of market" do
    expect(new_market).must_be_instance_of(FarMar::Market)
  end

  it "Testing to see if I can return all market instances" do
    expect(market_all.length).must_equal(500)
  end

  it "Testing to see if I can return a specific market instance" do
    test1 = FarMar::Market.find("500")
    expect(test1.class).must_equal(FarMar::Market)
  end

end
