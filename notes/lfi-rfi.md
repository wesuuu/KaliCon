# RFI/LFI : Local/Remote File Inclusion

An exploit that allows an attack to view files on the host machine. This happens when the code doesn't have input validation and can allow users to visit any page in a directory tree. Attackers can use relative navigation paths `../../` to get to files like `/etc/passwd`