


Target-Group 
    A target group can comprise of one of the following 
        1 Instances 
            Supports load balancing to instances within a specific VPC.
        2 IP addresses
            Supports load balancing to VPC and on-premises resources.
            Facilitates routing to multiple IP addresses and network interfaces on the same instance.
            Offers flexibility with microservice based architectures, simplifying inter-application communication.
            Supports IPv6 targets, enabling end-to-end IPv6 communication, and IPv4-to-IPv6 NAT.
        3 Lambda 
            Facilitates routing to a single Lambda function.
            Accessible to Application Load Balancers only.
        4 Application Load-Balancer 
            Offers the flexibility for a Network Load Balancer to accept and route TCP requests within a specific VPC.
            Facilitates using static IP addresses and PrivateLink with an Application Load Balancer.