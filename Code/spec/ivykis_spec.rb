require "spec_helper"
require_relative '../ivykis'

describe Ivykis do
	#examples
	
	it "should generate ID" do 
		ivykis = Ivykis.new
		ivykis.initializeID.should>0	
	end
=begin
	it "should print all Event information" do 
		ivykis = Ivykis.new("paskaita","Baltupiose","2014/04/07","18:00","Ruby","4",true)
		output = `ruby ivykis.rb`
  		output.should == 'Hello from RSpec' 	
	end
=end
end
