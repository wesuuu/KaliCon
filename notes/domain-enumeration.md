# Domain enumeration

Find a list of all subdomains, e.g. test.example.com from example.com

Programs typically enumerate over a list and test every route

virtual host

## Tools

- ffuf
- crunch
- gobuster

## Check same host 
```bash
# query against a word list
# this modifies the FUZZ with a word in the word list

# colorize output -c
# word list -w
ffuf -c -w /usr/share/seclists/Discovery/DNS/subdomains-*.txt -u <your_domain>.com -H "Host: FUZZ.<your_domain>.com
```

## Check if Virtual host

sometimes you can do load balancing on the same host. To check for this, you can use `gobuster`

```bash
gobuster vhost -w /usr/share/seclists/Discovery/DNS/subdomains-*.txt -u http://<your_domain>.com 
```

## Check DNS

```bash
gobuster dns -w /usr/share/seclists/Discovery/DNS/subdomains-*.txt -u http://<your_domain>.com
```

