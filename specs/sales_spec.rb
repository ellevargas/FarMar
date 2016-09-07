require_relative 'spec_helper'

describe "Testing FarMar::Sale" do

  it "Testing to see if I can create a new instance of sales" do
    test1 = FarMar::Sale.new
    expect(test1).must_be_instance_of(FarMar::Sale)
  end

  it "Testing to see if I can return all sales instances" do
    test2 = FarMar::Sale.all
    expect(test2.length).must_equal(12002) #ORLY? 12798 INSTEAD???
  end

  it "Testing to see if I can return a specific sales instance" do
    test3 = FarMar::Sale.find("00")
    expect(test3.class).must_equal(Array)
  end

end
