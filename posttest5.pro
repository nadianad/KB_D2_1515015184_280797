DOMAINS
alamat_asal = alamat(symbol,symbol,symbol) 		%alamat_asal = dengan tipe symbol,symbol,symbol
nama_mahasiswa,jenis_kelamin,nim = symbol 		%nama_mahasiswa, jenis_kelamin, nim dengan tipe symbol
nama_matkul,nama_dosen,program_studi,ruang = symbol 	%nama_matkul, nama_dosen, program_studi, ruang dengan type symbol

PREDICATES
/*Keywoard nondeterm pada section PREDICATES yang mendahului predikat orang berfungsi untuk memberitahu 
  compiler Visual Prolog bahwa predikat tersebut mempunyai lebih dari satu kemungkinan jawaban*/ 
nondeterm mhs(nama_matkul,nama_mahasiswa,jenis_kelamin,nim,alamat_asal) 	/*mhs dengan argumen nama_matkul, nama_mahasiswa, jenis_kelamin, nim, alamat_asal dengan jawaban bisa lebih dari satu*/
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan 		/*mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan dengan jawaban bisa lebih dari satu*/
cetak_mhs(nama_mahasiswa,nama_dosen,ruang,alamat_asal) 				/*cetak_mhs dengan argumen nama_mahasiswa,nama_dosen,ruang,alamat_asal*/
matkul(nama_matkul,nama_dosen,program_studi,ruang) 				/*matkul dengan argumen nama_matkul,nama_dosen,program_studi,ruang*/
matkul_yg_diajarkan_pd_smstr_tsb(nama_matkul,nama_mahasiswa,ruang,nama_dosen) 	/*matkul yg diajarkan pada semester tersebut dengan argumen nama_matkul,nama_mahasiswa,ruang,nama_dosen*/

CLAUSES
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:- 					/*mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan jika*/
write("\t*********  MAHASIAWA YANG MENGIKUTI MATAKULIAH INTELEGENSI BUATAN  *********"),nl, /*menampilkan kalimatnya di layar output,nextline(baris baru)*/
write("***********************************************************************************************************************"),nl, %menampilkannya di layar tampilan (output), nextline(baris baru)
write("\n"), %baris baru(enter)
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl, %menampilkannya di layar output,nextline(baris baru)
write("NIM\t Nama Mahasiswa\t Nama Dosen\tRuang\t\t\t Alamat\n"), 	 /*menampilkan di layar output*/
mhs("Intelegensi Buatan",_,_,_,_), 					 /*menyeting mahasiswa dari nama matakuliah intelegensi buatan*/
matkul(_,_,_,"1"), 							 /*menyeting matakuliah dari nomor ruang 1*/
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl, %menampilkannya di layar output,nextline(baris baru)
cetak_mhs(nama_mahasiswa,nama_dosen,ruang,alamat(symbol,symbol,symbol)). /*cetak_mhs dengan nama mhs,nama dosen,ruang,alamat yg terdiri dari nama jalan,kota,provinsi*/
%fail. 									 /*melacak balik jika ada panggilan yg gagal,untuk memaksa lacakbalik dlm rangka mencari alternatif solusi*/
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:- 		 /*mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan jika*/
write("\n\n Tekan sembarang tombol..."),nl, 				 /*menampilkan kalimatnya di layar output,nextline(baris baru)*/
readchar(_).


cetak_mhs(nama_mahasiswa,nama_dosen,ruang,alamat(symbol,symbol,symbol)):- /*cetak_mhs dengan argumen nama_mahasiswa,nama_dosen,ruang,alamat tipe symbol,symbol,symbol jika */
write("2002001","\t ","Sugeng Riyadi","\t "," Abdul Kadir","\t ","1","\t ","Jl. Sudirman No. 2 ","Pontianak, ","Kalimantan Barat"),nl, /*menmpilkan NIM, nama mahasiswa, Nama Dosen, Ruangan dan Alamat*/
write("2002002","\t ","Yulia Sugondo","\t "," Abdul Kadir","\t ","1","\t ","Jl. A. Yani No. 10 ","Klaten, ","Jawa Tengah"),nl,
write("2002003","\t ","Budiman Sejati","\t "," Abdul Kadir","\t ","1","\t ","Jl. Slamet Riyadi No. 45. ","Solo, ","Jawa Tengah"),nl.


matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Sugeng Riyadi","1","Abdul Kadir").  /*matkul_yg_diajarkan_pd_smstr_tsb berisi argumen Nama Matakuliah Intelegensi Buatan,*/ 
matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Yulia Sugondo","1","Abdul Kadir").  /*Nama Mahasiswa yang mengambil matakuliah tersebut, ruangan terlaksananya*/
matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Budiman Sejati","1","Abdul Kadir"). /*perkuliahan dan nama dosen yang mengajarkan*/

matkul_yg_diajarkan_pd_smstr_tsb("PDE","Laksamana Sukardi","2","Indra Yatini"). 	   /*matkul_yg_diajarkan_pd_smstr_tsb berisi argumen Nama Matakuliah PDE,*/ 	   
matkul_yg_diajarkan_pd_smstr_tsb("PDE","Rini Suwandi","2","Indra Yatini").		   /*Nama Mahasiswa yang mengambil matakuliah tersebut, ruangan terlaksananya*/
matkul_yg_diajarkan_pd_smstr_tsb("PDE","Kwik Kian Gie","2","Indra Yatini"). 		   /*perkuliahan dan nama dosen yang mengajarkan*/

matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Riri Reza","3","Sigit Anggoro").	   /*matkul_yg_diajarkan_pd_smstr_tsb berisi argumen Nama Matakuliah Teknik Antar Muka,*/ 
matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Rachel Maryam","3","Sigit Anggoro"). /*Nama Mahasiswa yang mengambil matakuliah tersebut, ruangan terlaksananya*/
matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Garin Nugroho","3","Sigit Anggoro"). /*perkuliahan dan nama dosen yang mengajarkan*/
	
mhs("Intelegensi Buatan","Sugeng Riyadi",lakilaki,"2002001",alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")). /*Data mhs yang mengambil matakuliah Intelegensi Buatan*/
mhs("Intelegensi Buatan","Yulia Sugondo",perempuan,"2002002",alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).	  /*terdapat nama matakuliah, nama mahasiswa, jenis kelamin, NIM, dan alamat*/
mhs("Intelegensi Buatan","Budiman Sejati",lakilaki,"2002003",alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

mhs("PDE","Laksamana Sukardi",lakilaki,"2002004",alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")). 	  /*Data mhs yang mengambil matakuliah PDE*/
mhs("PDE","Rini Suwandi",perempuan,"2002005",alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")). 		  /*terdapat nama matakuliah, nama mahasiswa, jenis kelamin, NIM, dan alamat*/
mhs("PDE","Kwik Kian Gie",lakilaki,"2002006",alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).

mhs("Teknik Antar Muka","Riri Reza",lakilaki,"2002007",alamat("Jl. RW Monginsidi No. 30"," Purwokerto"," Jawa Tengah")).  /*Data mhs yang mengambil matakuliah Teknik Antar Muka*/
mhs("Teknik Antar Muka","Rachel Maryam",perempuan,"2002008",alamat("Jl. Otista No. 112"," Bandung"," Jawa Barat")).       /*terdapat nama matakuliah, nama mahasiswa, jenis kelamin, NIM, dan alamat*/
mhs("Teknik Antar Muka","Garin Nugroho",lakilaki,"2002009",alamat("Jl. Tanjung Pura No. 101"," Jaya Pura"," Papua")).

matkul("Intelegensi Buatan","Abdul Kadir","Manajemen Informatika","1"). /*matkul berisi argumen nama matakuliah intelegensi buatan, nama dosennya, dan nama program studi*/
matkul("PDE","Indra Yatini","Teknik Informatika","2").			/*matkul berisi argumen nama matakuliah PDE, nama dosennya, dan nama program studi*/
matkul("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer","3").	/*matkul berisi argumen nama matakuliah Teknik Antar Muka, nama dosennya, dan nama program studi*/

GOAL
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan.		/*goalnya menampilkan mahasiswa yang mengikuti matakuliah intelegensi buatan*/