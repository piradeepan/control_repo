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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6IQV6QCr0xOUTgAd5Nzagjehs1QjGyaO8K1mG2P31r85vqn+9NXQ4CQoOa9FYV2tPsUOXVXP/FQojQ3Ktkp5LcQA1ysQLf+2FsrvbIMdM6U04Kdn5S3OIvqfR91XqtcUMsCJ55FbmkdaZmKGipp7mv/tWFpDb8He2S/dVRB+/wmiPhi70gFJYo8UGHshF5AuIjj9Oo0coBlIOhdgrsBJbyyqBVh0cFvh2p8/IqoFp/nzHdXqurg5MmjrqAQTJmJJ2eY0RPfVWvOvLQqXZUvQNKblLcnK5XCNy0r52Z9wv5t55S9y8oXZThj183mbqFcYrE0ObT3+VsErBArpANOrZ',
	}  
}
