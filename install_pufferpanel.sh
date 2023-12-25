#Install package
sudo apt update
sudo apt-get install wget 
sudo apt-get install git
sudo apt-get install nmap -y
sudo apt-get install openjdk-17-jre -y
sudo apt-get install espeak -y
sudo apt-get install curl -y
sudo apt-get install openssh-server
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 
#Package is install Complete
espeak "Package is install Complete"
espeak "Now is Pufferpanel Docker Version install"
espeak "Recommended install Docker"
#Pufferpanel Version install
mkdir -p /var/lib/pufferpanel

docker volume create pufferpanel-config

docker create --name pufferpanel -p 8080:8080 -p 5657:5657 -v pufferpanel-config:/etc/pufferpanel -v /var/lib/pufferpanel:/var/lib/pufferpanel -v /var/run/docker.sock:/var/run/docker.sock --restart=on-failure pufferpanel/pufferpanel:latest

docker start pufferpanel

docker exec -it pufferpanel /pufferpanel/pufferpanel user add
ssh-keygen
cat /root/.ssh/id_rsa.pub
nmap localhost
mkdir /etc/pufferpanel
mkdir /var/www/pufferpanel
espeak "Pufferpanel IS install"
rm -rf install_pufferpanel.sh
rm -rf README.md