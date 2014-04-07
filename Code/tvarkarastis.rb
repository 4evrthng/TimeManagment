require './daiktas'
require './ivykis'
require './pasikartojantisivykis'
require './pranesimas'
require './daiktusarasas'
require './ivykiusarasas'
class Tvarkarastis
	
	def parodytiDiena
		puts "Dienos ivykiai:"
		
		
	end
	def pridetiIvyki ivykis
	@sarasas = IvykiuSarasas.new();
		@sarasas.IdetiIvyki(ivykis)
	end

	
end;