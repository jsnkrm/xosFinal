decl
	integer status;
	integer status2;
	integer status3;
	integer status4;
enddecl

integer main() {
	status = Create("Mangekyo.dat");
	print(status);

	breakpoint;

	status2 = Open("Mangekyo.dat");
	print(status2);

	status = Write(status2,"Itachi");
	print(status);

	breakpoint;

	status3 = Open("Mangekyo.dat");
	print(status3);

	status = Read(status3,status4);
	print(status4);

	breakpoint;

	status = Close(status3);
	print(status);

	status = Close(status2);
	print(status);

	breakpoint;

	status = Delete("Mangekyo.dat");
	print(status);	

	return 0;
}