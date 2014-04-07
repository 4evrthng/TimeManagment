require './ivykis'
class IvykiuSarasas
	attr_accessor :ID
	ivykiai = [0] 
	def idetiDaikta (ivykiai)
	ivykiai[ivykiai.length()] = ivykiai
	end
	
	def IsimtiDaikta(id)
	ivykiai[ivykiai.length()] = nil if ivykiai.length()>1
	end
end