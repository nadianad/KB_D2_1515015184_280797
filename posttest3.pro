DOMAINS
 pelajaran, nama, nilai = symbol

PREDICATES
 nondeterm matkul(pelajaran,nama,nilai)

CLAUSES
 matkul(ib,irfan,a). %Intelejensi Buatan adalah mata kuliah yang diikuti oleh Irfan yang mendapat nilai A.
 matkul(ib,komeng,d). %Intelejensi Buatan adalah mata kuliah yang diikuti oleh Komeng yang mendapat nilai D.
 matkul(ib,dati,c). %Intelejensi Buatan adalah mata kuliah yang diikuti oleh Dati yang mendapat nilai C.
 matkul(ib,fatima,b). %Intelejensi Buatan adalah mata kuliah yang diikuti oleh Fatima yang mendapat nilai B.
 matkul(ib,maspion,c). %Intelejensi Buatan adalah mata kuliah yang diikuti oleh Maspion yang mendapat nilai C.
 matkul(pde,ricky,e). %PDE adalah mata kuliah yang diikuti oleh Ricky yang mendapat nilai E.
 matkul(pde,embang,a). %PDE adalah mata kuliah yang diikuti oleh Embang yang mendapat nilai A.
 matkul(pde,salmin,d). %PDE adalah mata kuliah yang diikuti oleh Salmin yang mendapat nilai D.
 matkul(pde,vina,b). %PDE adalah mata kuliah yang diikuti oleh Vina yang mendapat nilai B.
 matkul(pde,sondang,c). %PDE adalah mata kuliah yang diikuti oleh Sondang yang mendapat nilai C.
 matkul(so,pamuji,d). %SO adalah mata kuliah yang diikuti oleh Pamuji yang mendapat nilai D.
 matkul(so,luki,e). %SO adalah mata kuliah yang diikuti oleh Luki yang mendapat nilai E.
 matkul(so,sadek,b). %SO adalah mata kuliah yang diikuti oleh Sadek yang mendapat nilai B.
 matkul(so,yusida,a). %SO adalah mata kuliah yang diikuti oleh Yusida yang mendapat nilai A.
 matkul(so,eka,a). %SO adalah mata kuliah yang diikuti oleh Eka yang mendapat nilai A.

GOAL
matkul(ib,Nama,_);nl, %Nama-nama mahasiswa yang mengikuti matakuliah Intelejensi Buatan.
matkul(_,Nama_mahasiswa_yang_Tidak_Lulus,d);     %Nama-nama mahasiswa yang tidak lulus di semua mata kuliah -
matkul(_,Nama_mahasiswa_yang_Tidak_Lulus,e);nl,  % memiliki ketentuan yang mendapat nilai dibawah C (D dan E tidak lulus).	
matkul(_,Nama_mahasiswa_yang_Lulus,a); %Nama-nama mahasiswa yang lulus di semua mata kuliah 
matkul(_,Nama_mahasiswa_yang_Lulus,b); %memiliki ketentuan yang mendapat nilai A, B, dan C Lulus.	
matkul(_,Nama_mahasiswa_yang_Lulus,c);nl,
matkul(Pelajar,_,_);nl, %Menampilkan seluruh nama mata kuliah yang di ajarkan.
matkul(_,Nama,_). %Menampilkan seluruh nama Mahasiswa yang ada.
