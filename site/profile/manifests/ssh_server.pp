class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXNHNTxHYcCkXHBLj4kBapWu355dx8ivifkEk4OYwBhbmyr6NamCGk6HkZSaiALiSYucKbMLor1UHEabtG92LZCiLTRit+TCo4d90Fr0ZH5RxMJcz2MNNVC4SyGWA+adow9Mf1lrburo5Uc7Iuel7h0E7hktwTk7i0CfCZE+HmwaxHCpccI+2WsUfc64/3fVaJDOhOCA8bXlM39ImdLdFE57aungImN41utXg8h90gQ4FV6kX4USjERIxllVoStNFIhJRqDGmB8JlcKGYHIqL5l/8NMv4VO5rgIBlutxXmwj3dgsv9bpwlBXJCAoXOdhO/ypYB2OQvNIcq0N+nP9vh',
