require './Stuff.rb'

describe "Stuff" do

    it "should be able to create stuff" do
    stuff = Stuff.new("message");
    stuff.stuff_name.should == "message"
    end

    it "should be able to change stuff" do
    stuff = Stuff.new("message");
    stuff.stuff_name("any").should == "any";
    end
end