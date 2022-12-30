
*************************
Cross-Zone Load Balancing
*************************
        By default, the load balancer distributes incoming requests evenly across its enabled Availability 
    Zones for e.g. If AZ-a has 5 instances and AZ-b has 2 instances, the load will still be distributed 
    50% across each of the AZs.
        Enabling Cross-Zone load balancing allows the ELB to distribute incoming requests evenly across all 
    the back-end instances, regardless of the AZ. Elastic Load Balancing creates a load balancer node in the 
    AZ. By default, each load balancer node distributes traffic across the registered targets in its AZ only. 
    If you enable cross-zone load balancing, each load balancer node distributes traffic across the registered 
    targets in all enabled AZs.
        Cross-zone load balancer reduces the need to maintain equivalent numbers of back-end instances in each 
    AZ and improves the applications ability to handle the loss of one or more back-end instances. It is still 
    recommended to maintain approximately equivalent numbers of instances in each Availability Zone for higher 
    fault tolerance. With cross-zone load balancing, each load balancer node distributes traffic across the 
    registered targets in all enabled Availability Zones.
    ALB -> Cross Zone load balancing is enabled by default and free
    CLB -> Cross Zone load balancing is disabled, by default, and can be enabled and free
    NLB -> Cross Zone load balancing is disabled, by default, and can be enabled but charged for inter-az data 
    transfer.