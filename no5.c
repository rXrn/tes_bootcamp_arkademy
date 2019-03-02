#include<stdio.h>

int orang, handshake;

main() {
	printf("Jumlah orang: "); scanf("%d",&orang);
	handshake = countHandshake(orang);
	printf("Jumlah jabat tangan: %d", handshake);
}

int countHandshake(int n) {
	if (n==1 || n==0) {
		return 0;	
	}
	
	else if (n>1) {
		return (n-1)+countHandshake(n-1);
	}
	
}
