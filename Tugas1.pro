predicates
	tanam(symbol,symbol,symbol)- nondeterm(o,o,o)
	petani(symbol) - nondeterm(o)
	sayur(symbol) - nondeterm(o)
	buah(symbol) - nondeterm(o)
	memakan(symbol,symbol,symbol) - nondeterm(i,i,i), nondeterm(o,o,i)
		
	clauses
	tanam(A,B,C):-petani(A),sayur(B),buah(C),memakan(A,B,C).
	%A memakan B,C jika A adalah petani dan B adalah sayur dan C adalah buah
	%% A memakan B dan C
	
	petani(sri). %sri adalah petani
	petani(jordi).
		sayur(wortel).
		sayur(kol).
		sayur(tomat).
			buah(apel).
			buah(mangga).
			buah(jeruk).
	memakan(sri,wortel,apel).
	memakan(nadia,kol,mangga).
	memakan(jordi,tomat,jeruk).
	memakan(jordi,seledri,nangka).
	memakan(isa,sawi,ceri).
		
	goal
	tanam(A,B,C),nl,
	memakan(Orang_yangsuka_mangga,_,mangga).
