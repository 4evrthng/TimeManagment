require './daiktas'
class DaiktuSarasas
	#attr_accessor
	def initialize 
		@daiktai = [0] 

	end

	def idetiDaikta (daiktas)
		puts @daiktai
		@daiktai[@daiktai.length()] = daiktas
		if @daiktai[@daiktai.length()-1] == daiktas 
			then true
			end
	end
	
	def isimtiDaikta(pavadinimas)#?ID srsly??
		@daiktai.delete(pavadinimas) #.delete_if {|d| d.pavadinimas == pavadinimas }
		true
	end
end
