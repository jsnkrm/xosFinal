decl
	integer pid1,pid2;
	integer i,a,b,c,temp1,temp2;
	
enddecl

integer main(){

	a=Delete("a.dat");
	a=Delete("b.dat");
	a=Delete("c.dat");
	a=Delete("d.dat");

	pid1 = Fork();
	pid2 = Fork();

	if (pid1 == -2 && pid2 == -2) then
		a = Create("a.dat");
		a = Open("a.dat");

		c = Write(a,5);

		i=100;
		temp1 = 0;
		while (i < 1000) do
			c = Write(a,i);

			i = i + 20;
			temp1 = temp1 + 1;
		endwhile;

		c= Seek(a,0);
		c=Write(a,temp1);
		Exit();
	endif;

	if (pid1 == -2 && pid2 != -2) then
		a = Create("b.dat");
		a = Open("b.dat");

		c = Write(a,5);

		i=50;
		temp1 = 0;
		while (i < 1000) do
			c = Write(a,i);

			i = i + 20;
			temp1 = temp1 + 1;
		endwhile;

		c= Seek(a,0);
		c= Write(a,temp1);
		Exit();
	endif;

	if (pid1 != -2 && pid2 == -2) then
		a = Create("c.dat");
		a = Open("c.dat");

		c = Write(a,5);

		i=111;
		temp1 = 0;
		while (i < 1000) do
			c = Write(a,i);

			i = i + 10;
			temp1 = temp1 + 1;
		endwhile;

		c= Seek(a,0);
		c= Write(a,temp1);
		Exit();
	endif;


	if (pid1 != -2 && pid2 != -2) then
		a = Create("d.dat");
		a = Open("d.dat");

		c = Write(a,5);

		i=125;
		temp1 = 0;
		while (i < 1000) do
			c = Write(a,i);
			i = i + 10;
			temp1 = temp1 + 1;
		endwhile;

		c= Seek(a,0);
		c= Write(a,temp1);
		Exit();
	endif;

	return 0;
}