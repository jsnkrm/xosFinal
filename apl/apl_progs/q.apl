decl
	integer merge ();
	integer status,f1,f2,fp;
enddecl

integer merge()
{
	integer a,b,i,j,len1,len2,len;
	status=Read(f1,len1);
	status=Read(f2,len2);
	
	len=len1+len2;
	status=Write(fp,len);

	i=0;
	j=0;
	status=Read(f1,a);
	status=Read(f2,b);

	while(i<len1 && j<len2) do
		if (a < b) then
			status=Write(fp,a);
			status=Read(f1,a);
			i=i+1;
		else
			status=Write(fp,b);
			status=Read(f2,b);
			j=j+1;
		endif;
	endwhile;

	while(i<len1) do
		status=Write(fp,a);
		status=Read(f1,a);
		i=i+1;
	endwhile;

	while(j<len2) do
		status=Write(fp,b);
		status=Read(f2,b);
		j=j+1;
	endwhile;

	return fp;
}

integer main()
{	
	integer file1,file2,file;
	status=Delete("temp1.dat");
	status=Delete("temp2.dat");
	status=Delete("temp3.dat");

	status=Create("temp1.dat");
	status=Create("temp2.dat");
	status=Create("temp3.dat");

	f1=Open("a.dat");
	f2=Open("b.dat");
	fp=Open("temp1.dat");
	file1=merge();
	status=Seek(file1,0);

	f1=Open("c.dat");
	f2=Open("d.dat");
	fp=Open("temp2.dat");
	file2=merge();
	status=Seek(file2,0);

	f1=file1;
	f2=file2;
	fp=Open("temp3.dat");
	file=merge();
	return 0;
}