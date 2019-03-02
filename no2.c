#include<stdio.h>
#include<string.h>

char pass[25];
int isvalid;

main() {
	printf("Password: "); gets(pass);
	isvalid = isPasswordValid(&pass);
	if (isvalid==1) printf ("Password is valid");
	else printf ("Password is invalid");
}

//Mulai Fungsi yang mereturn angka 1 atau 0
//return 1 berarti password valid
//return 0 berarti password tidak valid

int isPasswordValid(const char *pass)
{
    int upper = 0, lower = 0, digit = 0, symbol=0, error = 0, i=0, valid=1;
    if (pass == NULL || strlen(pass) < 8) error = 1;
    
	for (i=0;i<strlen(pass);i++) {
		if(pass[i] >= 65 && pass[i] <=90 ) upper = 1;
		else if (pass[i] >= 97 && pass[i] <=122 ) lower = 1;
		else if (pass[i] >= 48 && pass[i] <=57 ) digit = 1;
		else symbol=1;
	}
	
	if(error == 1 || upper == 0 || lower == 0 || digit == 0 || symbol == 0) valid = 0;
	return valid;
}
