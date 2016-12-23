#######################191@qq.com################
=====Server01(ss)=====:
##Image：lowid/ss-with-net-speeder:latest
##Port：1010  tcp
##CMD：ssserver -p 1010 -k qwer1234 -m aes-256-cfb
IP:153.125.235.173
IP2:seaof-153-125-235-173.jp-tokyo-14.arukascloud.io
Port(ss):31858 ==> 1010

=====Server02=====:
##Image：jdeathe/centos-ssh:centos-6
##Port：22  tcp
##		7070 tcp

IP:153.125.235.179
IP2:seaof-153-125-235-179.jp-tokyo-14.arukascloud.io
Port(ssh):31779 ==> 22
Port(ss):31778 ==> 7070 

User: app-admin
Password: eIsilhwsWjqE9dxx

Command:
yum install python-setuptools && easy_install pip

pip install shadowsocks

ssserver -p 7070 -k wsh123456 -m rc4-md5 -d start

(ssserver -p 7070 -k wsh123456 -m rc4-md5 -d stop)

#=====Server02 ssh login=====
#curl -LSs https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant > id_rsa_insecure
####already have: 121.40.84.84:/root###
#chmod 600 id_rsa_insecure
#ssh -p 31779 -i id_rsa_insecure app-admin@153.125.235.179
#sudo -i

################################################################################
######################635@qq.com#######################
=====Server03=====：
##Image：lowid/ss-with-net-speeder:latest
##Port：7070  tcp
##CMD：ssserver -p 7070 -k qwer1234 -m aes-256-cfb
IP:153.125.234.242
IP2:seaof-153-125-234-242.jp-tokyo-12.arukascloud.io
Port(ss):31218 ==> 7070

=====Server04=====:
##Image：jdeathe/centos-ssh:centos-6
##Port：22  tcp
##		7070 tcp

IP:153.125.234.244
IP2:seaof-153-125-234-244.jp-tokyo-12.arukascloud.io
Port(ssh):31450 ==> 22
Port(ss):31700 ==> 9090

1、User: app-admin
2、Password: ThrI1gk5ekxZcGLk
3、key fingerprints:
dd:3b:b8:2e:85:04:06:e9:ab:ff:a8:0a:c0:04:6e:d6 (insecure key)
4、rsa host key fingerprint:
ee:d0:da:59:be:18:e0:3b:95:ed:0e:fd:65:ac:e5:5e

Command: The same as Server02
Extre Command (netspeeder加速)：
sudo -i
yum -y install wget
wget --no-check-certificate https://github.com/git-shine/resource/blob/master/net_speeder_install.sh
sh net_speeder_install.sh
nohup /usr/local/net_speeder/net_speeder eth0 "ip" >/dev/null 2>&1 &

