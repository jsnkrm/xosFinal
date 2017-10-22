integer main(){
	integer a;
	a = Create ("Hello.xsm");
	print(a);

	a = Open ("Hello.xsm");
	print(a);

	breakpoint;
	return 0;
}