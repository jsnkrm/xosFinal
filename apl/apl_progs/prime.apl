decl
	integer prime(integer n),a,b,flag;
enddecl

integer prime(integer n){
	a=2;
	while (a <= n) do
		b=2;
		flag=1;
		while(b*b <= a) do
			if(a%b == 0) then
				flag=0;
				break;
			endif;
			b=b+1;
		endwhile;
		if(flag == 1) then
			print(a);
		endif;
		a=a+1;
	endwhile;

	return 0;
}

integer main(){
	integer n;
	breakpoint;
	print("Enter a NO :D ");
	read(n);
	a= prime(n);
	return 0;
} 