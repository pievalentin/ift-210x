$TTL 86400
@   IN  SOA     ns1.evilcorp.ca. root.evilcorp.ca (
        2013042201  ;Serial
        3600        ;Refresh
        1800        ;Retry
        604800      ;Expire
        86400       ;Minimum TTL
)
; Specify our two nameservers
		IN	NS		ns1.evilcorp.ca.
		IN	NS		ns2.evilcorp.ca.
; Resolve nameserver hostnames to IP, replace with your two droplet IP addresses.
ns1		IN	A		199.48.22.28
ns2		IN	A		199.48.22.98

; Define hostname -> IP pairs which you wish to resolve
@		IN	A		199.48.22.99
www		IN	A		199.48.22.99
paiement 	IN	A 		192.168.100.100
