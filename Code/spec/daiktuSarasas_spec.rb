require "spec_helper"
require_relative '../daiktuSarasas'

describe DaiktuSarasas do
	#examples
	
	it "turi prideti nauja ivyki i sarasa" do
		ds = DaiktuSarasas.new
		d = Daiktas.new("Akiniai",2);
		ds.idetiDaikta(d).should_not be_nil;
	end


	it "turi isimti ivyki is saraso" do
		ds = DaiktuSarasas.new
		d = Daiktas.new("Akiniai",2)
               
		ds.isimtiDaikta(d).should_not be_nil;
	end


end
