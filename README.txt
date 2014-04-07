Tema: Laiko tvarkymo sistema. 
Klases ir ju metodai:
Vartotojai:
	ID,Slaptazodis,Lytis,Panaikinimas
	Ar galima nustatyti/pakeisti/panaikinti be atitinkamu metodu?
Daiktas:
	ID, pavadinimas, svarba, kur guli
Daiktu sarasas:
	ID, Masyvas su daiktais, Ideti / isimti daikta
Ivykis:
	ID,kas,kur,kada,ka,aprasymas,keliones trukme,suinaikinimas, kokio tipo pranesimas, pakeisti ivykio detales

Pasikartojantis ivykis extends ivykis:
	kiek kartu pasikartoja/ar iki kurios datos, kaip pasikartoja(kas kiek laiko)

Ivykiu sarasas: 
	ID, Masyvas su ivykiais, ideti / isimti ivyki, pakeisti keliu pasikartojanciu ivykiu detales(ivykioID, kaip daznai pasikartoja pakeitimas, pakeitimo detales)
Tvarkarastis:
	Parodyti diena/savaite( kokia), parodyti sekanti ivyki, Padaryti savaites perzvalga, apskaiciuot kiek veluoji pagal grafika, ir kada velavimas jau netures itakos, siulo laisva laika naujam ivykiui
Pranesimas:
	ID, pries kiek, kiek kartu

Sistemos savybės:
Vartotojas:
•	Užsiregistruoti sistemą
a.	Vartotojas turi ID
b.	Vartotojas turi lytį
c.	Vartotojas turi slaptažodį
•	Užpildyti tvarkaraštį
a.	Pridėti vienkartinį/pasikartojanti įvykį
b.	Užpildant kiekvieną įvykį reikia nurodyti daiktų sąrašą
c.	Užpildant kiekvieną įvykį reikia nurodyti įvykio vietą
d.	Užpildant kiekvieną įvykį reikia nurodyti įvykio trukmė
e.	Užpildyti kiekvienos dienos įvykius
f.	Pridėti įvykio aprašymą
g.	Priskirti daiktus kažkokiam įvykiui
h.	Pakeisti įvykio detalės pasikartojantiems įvykiams( laiką, vietovę, daiktų sąrašą, aprašymą, pranėšimo detalės)
i.	Pakeisti įvykio detalės nepasikartojantiems įvykiams ( laiką, vietovę, daiktų sąrašą, aprašymą, pranėšimo detalės)
j.	Pakeisti įvykio detalės pasikartojančių įvykių daliai (vienam, arba keliems) ( laiką, vietovę, daiktų sąrašą, aprašymą, pranėšimo detalės)
•	Sudaryti daiktų sąrašą.
•	Užpildyti kelionės trukmė tarp nurodytų vietų
•	Nustatyti išvykimo laiką
•	Nustatyti pranėšimo detalės(laiką, skambučio toną)
•	Atjungti pranėšimus
•	Įvesti vėlavimo laiką( jei yra) ir atitinkamai nuo to pasikeis tvarkaraštis
•	Kas savaitė daryti tvarkaraščio peržvalga
•	Gali pasirinkti tvarkaraščio peržvalgos laiką
•	Suranda laiką, naujai veiklai ( jei laikas nėra nurodytas)
•	Sunaikinti įvykį arba jų seriją

Sistemą:
•	Praneš apie kiekvieną įvykį prieš išvykimą 
•	Praneš apie daiktus kuriuos reikia nepamiršti pasiimti
•	Tvarkaraštis keisis savarankiškai jei yra vėlavimai
•	Automatiškai randa laisva laiką įvykiui 


