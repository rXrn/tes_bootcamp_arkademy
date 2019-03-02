#include<stdio.h>

int i,j,total;

main() {
	printf("baris: "); scanf("%d",&total);
	if(total%2==1) {
		drawImage(total);
	}
	else {
		printf("Jumlah baris/kolom harus ganjil");
	}
	
}

void drawImage(int num) {
	for(i=1;i<=num;i++) {
		for(j=1;j<=num;j++) {
			if(j==(num/2)+1 || i==(num/2)+1) printf("* ");
			else if(i==1 && j==num) printf("* ");
			else if(i==num && j==num) printf("* ");
			else if(i==num && j==1) printf("* ");
			else if(i==1 && j==1) printf("* ");
			else printf("= ");
		}
		printf("\n");
	}
}
