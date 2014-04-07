require './daiktas'
class DaiktuSarasas
	attr_accessor :ID
	daiktai = [0] 
	def idetiDaikta (daiktas)
	daiktai[daiktai.length()] = daiktas
	end
	
	def IsimtiDaikta(id)
	daiktai[daiktai.length()] = nil if daiktai.length()>1
	end
end