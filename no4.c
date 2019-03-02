#include <stdio.h>

int totalbelanja = 0, uangmasuk = 0;

main() {
	printf("Total belanja: "); scanf("%d",&totalbelanja);
	printf("Uang yang dimasukkan: "); scanf("%d",&uangmasuk);
	hitungKembalian(totalbelanja,uangmasuk);
}

void hitungKembalian(int belanja, int masuk) {
	int kembalian=0, limaratus, seribu, duaribu, limaribu, sepuluhribu, duapuluhribu, limapuluhribu;
	int sisa, sisa2, sisa3, sisa4, sisa5, sisa6, sisa7;
	kembalian = masuk - belanja;
   
    limapuluhribu=kembalian / 50000;
    duapuluhribu=(kembalian - (limapuluhribu * 50000)) / 20000;
    sepuluhribu=(kembalian - ((limapuluhribu * 50000) + (duapuluhribu * 20000))) / 10000;
    limaribu=(kembalian - ((limapuluhribu * 50000) + ( duapuluhribu * 20000) + (sepuluhribu * 10000))) / 5000;
    duaribu=(kembalian - ((limapuluhribu * 50000) + ( duapuluhribu * 20000) + (sepuluhribu * 10000) + (limaribu * 5000))) / 2000;
	seribu=(kembalian - ((limapuluhribu * 50000) + ( duapuluhribu * 20000) + (sepuluhribu * 10000) + ( limaribu * 5000) + (duaribu * 2000)))/1000;
    limaratus=(kembalian - ((limapuluhribu * 50000) + ( duapuluhribu * 20000) + (sepuluhribu * 10000) + ( limaribu * 5000) + (duaribu * 2000) + (seribu * 1000)))/500;
    
   
    if(limapuluhribu!=0) printf("%d x 50000\n",limapuluhribu);
	if(duapuluhribu!=0) printf("%d x 20000\n",duapuluhribu);
	if(sepuluhribu!=0) printf("%d x 10000\n",sepuluhribu);
	if(limaribu!=0) printf("%d x 5000\n",limaribu);
	if(duaribu!=0) printf("%d x 2000\n",duaribu);
	if(seribu!=0) printf("%d x 1000\n",seribu);
	if(limaratus!=0) printf("%d x 500\n",limaratus);
}
