require './ivykis'
class IvykiuSarasas
	attr_accessor :ID
	
	def IdetiIvyki (ivykis)
	ivykiai = [0] 
	ivykiai[ivykiai.length()] = ivykis
	end
	
	def IsimtiIvyki(id)
	ivykiai = [0] 
	ivykiai[ivykiai.length()] = nil if ivykiai.length()>1
	end
end