decl
	integer status,pid;
	string filename;
enddecl

integer main(){
	print("jsnkrm@xos:~$ ");
	read(filename);

	while(filename != "exit") do
		pid = Fork();
		if(pid == -1) then
			print("Out Of Memory");
		endif;

		if( pid == -2) then
			status = Exec (filename);
			if(status == -1) then
				print("Inv Command");
				Exit();
			endif;
		endif;

		if (pid >= 0 && pid < 32) then
			status = Wait(pid);
		endif;

		print("jsnkrm@xos:~$ ");
		read(filename);
	endwhile;

	return 0;
}