require './Thing.rb'

describe "Thing" do

    it "should be able to create thing" do
      thing = Thing.new("message");
      thing.thing_name.should == "message"
    end

    it "should be able to change thing" do
      thing = Thing.new("message");
      thing.thing_name("any").should == "any";
    end
end