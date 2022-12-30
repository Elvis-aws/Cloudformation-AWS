
***********
Scaling ELB
***********
    - Each ELB is allocated and configured with a default capacity. 
    - ELB Controller is the service that stores all the configurations and also monitors the load balancer 
      and manages the capacity that is used to handle the client requests. 
    - As the traffic profile changes, the controller service scales the load balancers to handle more 
      requests, scaling equally in all AZs. 
    - ELB increases its capacity by utilizing either larger resources (scale up - resources with higher 
      performance characteristics) or more individual resources (scale-out).
    - AWS handles the scaling of the ELB capacity and this scaling is different to the scaling of the EC2 
      instances to which the ELB routes its request, which is dealt with by Auto Scaling.
    - Time required for Elastic Load Balancing to scale can range from 1 to 7 minutes, depending on the 
      changes in the traffic profile
    - When an Availability Zone is enabled for the load balancer, Elastic Load Balancing creates a load 
      balancer node in the Availability Zone.
    - By default, each load balancer node distributes traffic across the registered targets in its 
      Availability Zone only.