
*******************
Load balancer types
*******************
    *************************
    Application Load Balancer
    *************************
        An Application Load Balancer makes routing decisions at the application layer (HTTP/HTTPS), supports 
        path-based routing, and can route requests to one or more ports on each container instance in your 
        cluster. Application Load Balancers support dynamic host port mapping. For example, if your tasks 
        container definition specifies port 80 for an NGINX container port, and port 0 for the host port, then 
        the host port is dynamically chosen from the ephemeral port range of the container instance (such as 
        32768 to 61000 on the latest Amazon ECS-optimized AMI). When the task is launched, the NGINX container 
        is registered with the Application Load Balancer as an instance ID and port combination, and traffic 
        is distributed to the instance ID and port corresponding to that container. This dynamic mapping allows 
        you to have multiple tasks from a single service on the same container instance.
    *********************
    Network Load Balancer
    *********************
        A Network Load Balancer makes routing decisions at the transport layer (TCP/SSL). With TCP applications
        can exchange data or messages over the network. It can handle millions of requests per second. After 
        the load balancer receives a connection, it selects a target from the target group for the default rule 
        using a flow hash routing algorithm. It attempts to open a TCP connection to the selected target on the 
        port specified in the listener configuration. It forwards the request without modifying the headers. 
        Network Load Balancers support dynamic host port mapping. For example, if your tasks container definition 
        specifies port 80 for an NGINX container port, and port 0 for the host port, then the host port is 
        dynamically chosen from the ephemeral port range of the container instance (such as 32768 to 61000 on 
        the latest Amazon ECS-optimized AMI). When the task is launched, the NGINX container is registered with 
        the Network Load Balancer as an instance ID and port combination, and traffic is distributed to the 
        instance ID and port corresponding to that container. This dynamic mapping allows you to have multiple 
        tasks from a single service on the same container instance.
    *********************
    Classic Load Balancer
    *********************
        They support TCP, HTTP and HTTPS, fixed host name, old generation load balancer.
    *********************
    Gateway Load Balancer
    *********************
        Operates at layer 3 (Network layer) - IP Protocol. Choose a Gateway Load Balancer when you need to deploy 
        and manage a fleet of third-party virtual appliances that support GENEVE. These appliances enable you to 
        improve security, compliance, and policy controls.
************************
Load Balancer Categories
************************
    *********************
    Internet Load Balancer
    *********************
        An Internet-facing load balancer takes requests from clients over the Internet and distributes them 
        across the EC2 instances that are registered with the load balancer.
    **********************
    Internal Load Balancer
    **********************
        An Internal load balancer routes traffic to EC2 instances in private subnets.
