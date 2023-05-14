# Network stuff

## Get public IP address from another computer

To get the public IP address of your Linux machine using dig, you can use the following command:

`dig +short myip.opendns.com @resolver1.opendns.com`

This command queries the resolver1.opendns.com DNS server and asks for its own public IP address using the myip.opendns.com hostname. The +short option instructs dig to only display the IP address without any additional information.
