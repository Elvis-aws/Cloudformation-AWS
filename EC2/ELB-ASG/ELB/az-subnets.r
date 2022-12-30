

**************************
Availability Zones/Subnets
**************************
    - Elastic Load Balancer should have at least one subnet attached.
    - Elastic Load Balancing allows subnets to be added and creates a load balancer node in each of the 
      Availability Zone where the subnet resides.
    - Only one subnet per AZ can be attached to the ELB. Attaching a subnet with an AZ already attached 
      replaces the existing subnet
    - Each Subnet must have a CIDR block with at least a /27 bitmask and has at least 8 free IP addresses, 
      which ELB uses to establish connections with the back-end instances.
    - For High Availability, it is recommended to attach one subnet per AZ for at least two AZs, even if 
      the instances are in a single subnet.
    - Subnets can be attached or detached from the ELB and it would start or stop sending requests to the 
      instances in the subnet accordingly