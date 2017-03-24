DOMAINS
  nama,jender,pekerjaan,benda,alasan,zat = symbol
  umur=integer

PREDICATES
  nondeterm orang(nama, umur, jender, pekerjaan)
  nondeterm selingkuh(nama, nama)
  terbunuh_dengan(nama, benda)
  terbunuh(nama)
  nondeterm pembunuh(nama)
  motif(alasan)
  ternodai(nama, zat)
  milik(nama, benda)
  nondeterm cara_kerja_mirip(benda, benda)
  nondeterm kemungkinan_milik(nama, benda)
  nondeterm dicurigai(nama)

/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES   
  orang(budi,55,m,tukang_kayu). %budi adalah seseorang yang berumur 55 tahun berjenis kelamin laki-laki dan pekerjaannya sebagai tukang kayu.
  orang(aldi,25,m,pemain_sepak_bola). %aldi adalah seseorang yang berumur 25 tahun berjenis kelamin laki-laki dan pekerjaannya sebagai pemain sepak bola.
  orang(aldi,25,m,tukang_jagal). %aldi adalah seseorang yang berumur 25 tahun berjenis kelamin laki-laki dan pekerjaannya sebagai tukang jagal.
  orang(joni,25,m,pencopet). %joni adalah seseorang yang berumur 25 tahun berjenis kelamin laki-laki dan pekerjaannya sebagai pencopet.

  selingkuh(ina,joni). %ina berselingkuh dengan joni.
  selingkuh(ina,budi). %ina berselingkuh dengan budi.
  selingkuh(siti,joni). %siti berselingkuh dengan joni.

  terbunuh_dengan(siti,pentungan). %siti terbunuh degan menggunkan pentungan
  terbunuh(siti). %siti terbunuh

  motif(uang). %uang sebagai motif pembunuhannya
  motif(cemburu). %cemburu sebagai motif pembunuhannya
  motif(dendam). %cemburu sebagai motif pembunuhannya

  ternodai(budi, darah). %budi ternodai oleh darah
  ternodai(siti, darah). %siti ternodai oleh darah
  ternodai(aldi, lumpur). %aldi ternodai oleh lumpur
  ternodai(joni, coklat). %joni ternodai oleh coklat
  ternodai(ina, coklat). %ina ternodai oleh coklat

  milik(budi,kaki_palsu). %budi miliki kaki palsu
  milik(joni,pistol). %joni memilik pistol

/* * * Basis Pengetahuan * * */

  cara_kerja_mirip(kaki_palsu, pentungan). %kaki palsu cara kerja mirip sebuah pentungan
  cara_kerja_mirip(balok, pentungan). %balok cara kerja mirip sebuah pentungan 
  cara_kerja_mirip(gunting, pisau). %gunting cara kerja mirip sebuah pisau
  cara_kerja_mirip(sepatu_bola, pentungan). %sepatu bola cara kerja mirip sebuah pentungan

  kemungkinan_milik(X,sepatu_bola):- %X kemungkinan memiliki sepatu bola jika 
  orang(X,_,_,pemain_sepak_bola). %X adalah seseorang siapaun/apapun siapapu/apapunn adalah pemain sepak bola
  kemungkinan_milik(X,gunting):- %X keungkina memiliki gunting jika
  orang(X,_,_,pekerja_salon). %X adalah seseorang siapapun/apapun siapapun/apapun adalah pekerja salon
  kemungkinan_milik(X,Benda):- %X kemungkinan memiliki sebuah benda jika
  milik(X,Benda). %X memiliki Benda

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * dicurigai semua orang yang memiliki senjata yang      *
 * kerjanya mirip dengan senjata penyebab siti terbunuh. *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

  dicurigai(X):- %X dicurigai jika
  terbunuh_dengan(siti,Senjata) , %siti terbunhnya dengan sebuah senjata
   
  cara_kerja_mirip(Benda,Senjata) , %Benda yang cara kerjanya mirip dengan senjata
  kemungkinan_milik(X,Benda). %X kemungkinan memiliki sebuah benda

/* * * * * * * * * * * * * * * * * * * * * * * * * *
 * dicurigai laki-laki yang selingkuh dengan siti. *
 * * * * * * * * * * * * * * * * * * * * * * * * * */

  dicurigai(X):- %X dicurigai jika
  motif(cemburu), %cemburu adalah motifnya
  orang(X,_,m,_), %X adalah seseorang siapapun/apapun berjenis kelamin laki-laki siapapun/apapun
  selingkuh(siti,X). %siti berselingkuh dengan X

/* * * * * * * * * * * * * * * * * * * * * * *
 * dicurigai perempuan yang selingkuh dengan *
 * laki-laki yang juga selingkuh dengan siti *
 * * * * * * * * * * * * * * * * * * * * * * */

  dicurigai(X):- %X dicurigai jika
  motif(cemburu), %cemburu adalah motifnya
  orang(X,_,f,_), %X adalah seseorang siapapun/apapun yang berjenis kelamin perempuan siapapun/apapun
  selingkuh(X,Lakilaki), %X berselingkuh dengan laki-laki
  selingkuh(siti,Lakilaki). %siti berseingkuh dengan laki-laki

/* * * * * * * * * * * * * * * * * * * * * * * * * * *
 * dicurigai pencopet yang mempunyai motif uang.     *
 * * * * * * * * * * * * * * * * * * * * * * * * * * */

  dicurigai(X):- %X dicurigai jika
  motif(uang), %uang adalah motifnya
  orang(X,_,_,pencopet). %X adalah seseorang siapapun/apapun siapapun/apapun yang pekerjaannya sebagai pencopet

  pembunuh(Pembunuh):- %pembunuh adalah seorang pembunuh jika
  orang(Pembunuh,_,_,_), %pembunuh adalah seseorang siapapun/apapun siapapun/apapun siapapun/apapun 
  terbunuh(Terbunuh), %tebunuh karena terbunuh
  Terbunuh <> Pembunuh, /* Bukan bunuh diri */ 
  dicurigai(Pembunuh), %pembunuh selalu dicurigai
  ternodai(Pembunuh,Zat), %pembunuh ternodai sebuah zat
  ternodai(Terbunuh,Zat). %terbunuh ternodai sebuah zat

GOAL
  pembunuh(X). %x adalah pembunuh
