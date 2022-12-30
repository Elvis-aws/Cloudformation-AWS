
**************
DNS Resolution
**************
    - ELB is scaled automatically depending on the traffic profile.
    - When scaled, the Elastic Load Balancing service will update the Domain Name System (DNS) record of 
      the load balancer so that the new resources have their respective IP addresses registered in DNS.
    - DNS record created includes a Time-to-Live (TTL) setting of 60 seconds
    - By default, ELB will return multiple IP addresses when clients perform a DNS resolution, with the 
      records being randomly ordered on each DNS resolution request.
    - It is recommended that clients will re-lookup the DNS at least every 60 seconds to take advantage 
      of the increased capacity