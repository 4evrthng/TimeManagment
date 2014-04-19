class Ivykis
	attr_accessor :kas, :kur, :kada, :kadaL, :aprasymas, :trukme, :pranesimas
	
	def initialize
		@ID = self.initializeID;	
	end	

	def toString
	#puts("ID = ",self.ID," \nkas,",self.kas," \nkur,",self.kur," \nkada,",self.kada," \nkadaL,",self.kadaL," \nka," ,self.ka,"\naprasymas,",self.aprasymas," \ntrukme,",self.trukme," \nkelionesTrukme",self.kelionesTrukme," \npranesimas")
	puts kas, kur, kada, kadaL, aprasymas, trukme, pranesimas
	end
	
	def initializeID
	1;
	end
	
end
