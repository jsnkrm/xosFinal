decl 
	integer pid;
enddecl

integer main()
{
	

	breakpoint;
	print ("Before Fork");
	breakpoint;
	pid = Fork();
	breakpoint;
	if (pid == -2) then
		pid=Exec("prime.xsm");
	else
		print ("After Fork");
	endif;
	breakpoint;
	return 0;
}