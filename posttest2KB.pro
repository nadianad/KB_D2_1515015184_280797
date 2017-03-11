PREDICATES
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,STRING)
nondeterm usia(STRING,INTEGER)

CLAUSES
anak("Jhon","James"). %jhon adalah anak dari james
anak("James","Peter"). %james adalah anak dari peter
anak("Sue","Ann"). %sue adalah anak dari ann
istri("Mary","Peter").%mary adalah istri dari peter
istri("Ann","James"). %ann adalah istri dari james
pria("Jhon"). %jhon adalah seorang pria
pria("James"). %james adalah seorang pria
pria("Peter"). %peter adalah seorang pria
wanita("Mary"). %mary adalah seorang wanita
wanita("Sue"). %sue adalah seorang wanita
wanita("Ann"). %ann adalah seorang wanita
usia("Jhon",10). %jhon berusia 10
usia("Sue",13). %sue berusia 13
 
ayah(A,B):-anak(B,A). %A adalah ayah dari B jika B adalah anak dari A
kakek(A,B):-ayah(A,C), ayah(C,B). %A adalah kakek dari B jika A adalah ayah dari C dan C adalah ayah dari B
ibu(A,B):-istri(B,C), anak(A,C). %A adalah ibu dari B jika B adalah istri dari C dan A adalah anak dari C
cucu(A,B):-anak(A,C), anak(C,B). %A adalah cucu dari B jika A adalah anak dari B dan C adalah anak dari B
cucu(A,B):-anak(A,C), istri(C,D), anak(D,B). %A adalah cucu dari B jika A adalah anak dari C dan C adalah istri dari D dan D adalah anak dari B
adik(A,B):-usia(A,C), usia(B,D), C<D. %A adalah adik dari B jika A berusia sama dengan C dan B berusia sama dengan D dan usia C kurang dari usia D
 

GOAL
cucu(Y,Z).  %Y adalah cucu Z => hanya jhon dan sue yang mencantumkan umurnya