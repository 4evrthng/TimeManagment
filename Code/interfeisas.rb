require './tvarkarastis'

class Interfeisas
	i=0
	def self.meniu (klausimas,v = " ")
		puts 'Sistema: ', klausimas
		puts v
		i = gets.to_i
		return i
  end
		tvarkarastis= Tvarkarastis.new();
		kl = "Pasirinkite veiksma"
		kv = [["0 Iseiti","1 Dirbt"],[" ","1 perziureti diena","2 ikelti ivyki"]]
		i = meniu(kl,kv[0])
		if i==0
			meniu("Goodbye")
		else 
			i = meniu(kl,kv[1])
			case i
			when 1
				tvarkarastis.parodytiDiena
			when 2
				iv = Ivykis.new();
				puts "Iveskite kas vyks"
				iv.kas= gets
				puts "Iveskite ivykio data (formatas 2010/12/31)"
				iv.kada= gets
				puts "Iveskite ivykio laika (formatas 12:30)"
				iv.kadaL = gets
				iv.toString()
				tvarkarastis.pridetiIvyki(iv)
=begin
			when 6
			  puts "It's 6"
			when String
			  puts "You passed a string"
			else
			  puts "You gave me #{i} -- I have no idea what to do with that."
=end
			end
		end
		 
	


end
