#! /bin/bash
apt update
apt upgrade -y
apt install sed curl

sh ./ppa.sh
apt update

echo [.config]
cp -r ./config/ ~/.config

echo [.bashrc]


echo [.profile]
cat ./profile >> ~/.profile

echo [APT]
eval $(sed -f apt.sed apt.txt)
#sed -f apt.sed apt.txt

echo [scripts]
for script in ./scripts/*.sh
do
	echo $script
	sh $script || echo "ERROR $script"
done

echo [DPKG]
for item in ./dpkg/*.deb
do
	echo $item
	dpkg -i item
done

