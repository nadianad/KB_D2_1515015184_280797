/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E06.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  person = symbol 

predicates
  father(person) - nondeterm (o) %orang(person) adalah seorang ayah(father) -> output
  father(person,person) - nondeterm (o,o) %orang(person) adalah seorang ayah(father) dari orang(person) lain -> output,output

clauses %fakta
  father(Man):- %Man adalah seorang ayah(father) jika
	father(Man,_). %Man adalah ayah(father) dari _(person)
  father(adam,seth).	%Adam adalah ayah(father) dari seth
  father(abraham,isaac). %Abraham adalah ayah(father) dari isaac

goal
  father(X). %X adalah ayah(father)
  
  %outputnya X=adam X=abraham karena yang memenuhi aturan(fakta)-
  %orang(person) adalah ayah(father) jika orang(person) adalah ayah(father) dari orang(person) lain 
  %hanya adam dan abraham
