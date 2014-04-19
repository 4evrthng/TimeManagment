require "spec_helper"
require_relative '../daiktas'

describe Daiktas do
	#examples
	
	it "should generate ID" do 
		daiktas = Daiktas.new("Akiniai",2)
		daiktas.initializeID.should>0	
	end

	it "idet su kitkuo" do 
		daiktas = Daiktas.new("Akiniai",2);
		daiktas.initializeID.should>0	
	end


end
