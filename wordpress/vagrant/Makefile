vgenerate:
	vagrant ssh-config > vagrant-ssh

vconnect:
	ssh -F vagrant-ssh default

vclean:
	rm $PWD/vagrant-ssh
