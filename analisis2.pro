/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates %predikat
  likes(symbol,symbol) - nondeterm (i,o) %menyukai
  tastes(symbol,symbol) - nondeterm (i,i) %rasa
  food(symbol) - nondeterm (o) %makanan

clauses
  likes(bill,X):- %bill menyukai X jika
	food(X), %X adalah sebuah makanan  
	tastes(X,good). %X rasanya enak(good)

  tastes(pizza,good). %pizza rasanya enak
  tastes(brussels_sprouts,bad). %brussels sprouts rasanya buruk

  food(brussels_sprouts). %brussels sprouts adalah sebuah makanan
  food(pizza). %pizza adalah sebuah makanan

goal
  likes(bill,What). %bill menyukai apa
	%hasil run nya adalah What=pizza karena bill menyukai X jika X adalah food(makanan)
	%dan rasanya x enak. hanya rasa pizza yang enak.