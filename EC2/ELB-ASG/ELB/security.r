
**********************
Security Groups & NACL
**********************
    - Security groups & NACLs should allow Inbound traffic, on the load balancer listener port, from the 
      Client for an Internet ELB or VPC CIDR for an Internal ELB
    - Security groups & NACLs should allow Outbound traffic to the back-end instances on both the instance 
      listener port and the health check port
    - NACLs, in addition, should allow responses on the ephemeral ports
    - All EC2 instances should allow incoming traffic from ELB