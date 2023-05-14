# nmap

follows pattern `nmap <scantypes> <options> <target>`

## Scan types

### Stealthy


`-sT`: full TCP connection. Default scan. Since this completes the full three way handshake, you don't disrupt running services and leave it subject to inquiry

`-Ss`: TCP-syn. Will send a SYN packet and will listen for a response. If it receives an ACK, the port is open. RST flag indicates it's closed and no return means the firewall dropped it (ie filtered)

`-sn`: disable port scanning. ICMP echo request is used instead

`-sP`: ICMP ping scan

### Detectable

`-sU`: UDP scan

`-sV`: Get the system version by analyzing responses

`-PE`: ICMP echo request

`-O`: OS Scan

`-sV`: system version info

`-A`: comprehensive scan for os and version info

`--script smb-os-discovery`: scan operating system

`-sC`: simple version detection

## Options

`-iL`: list of IP addresses, e.g. `-iL hosts.txt`

`--reason`: see a reason why a host was determined alive or not

`--packet-trace`: see the types of packets being sent back and forth

`-n`: disable DNS scanning

`-F`: scans top 100 ports

`-Pn`: Disables ICMP echo request

## Scripts

`--banner`: can determine target OS

`--smtp-commands`: type of smtp commands the target allows

`--vuln`: find informatin about a site and vulnerable versions if applicable

## Notes

Different operating systems have different TTLs for ICMP echo requests. Here's a table for each

| Operating System | Default TTL |
|---|---|
| Windows | 128 |
| Linux | 64 |
| macOS | 64 |
| FreeBSD | 64 |
| Solaris | 64 |

Information that you'll seek to get from `nmap` scanning

- Open ports and its services
- Service versions
- Information that the services provided
- Operating system

## nmap states

- Open: The service is listening for connections on the port.
- Closed: The service is not listening for connections on the port.
- Filtered: The service is filtered by a firewall or other network security device. The network either rejects or drops packets. Use `--packet-trace` to determine what happened. Longer duration scans usually mean rejected packets
- Unfiltered: The service is not filtered by a firewall or other network security device.
- Open|Filtered: Nmap cannot determine whether the port is open or filtered.
- Closed|Filtered: Nmap cannot determine whether the port is closed or filtered.

## Replies

ICMP type 3 response typically means the host is down or your packet was rejected by the firewall

UDP scans send blank datagrams and therefore, `nmap` only knows if the udp port is open if the server is configured to do so

## Reporting

can be in plain .nmap, greppable .gnmap, or xml. use `-oA <filename>` to output all formats.

the command below can render an html doc

```bash
xsltproc target.xml -o target.html
```

80/tcp    open  http
110/tcp   open  pop3
139/tcp   open  netbios-ssn
143/tcp   open  imap
445/tcp   open  microsoft-ds
31337/tcp open  Elite
