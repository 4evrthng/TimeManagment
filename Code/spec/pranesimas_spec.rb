require "spec_helper"
require_relative '../pranesimas'

describe Pranesimas do
	#examples

	it "should generate ID" do
		pranesimas = Pranesimas.new
		pranesimas.ID.should >0
	end

end
