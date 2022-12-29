

Nat Gateway
    Manages internet connection between your AWS resources and the internet while keeping them private
    The Nat is placed in the public subnet and receives trafffic from the internet gateway then routes traffic
    to the private resources in the private subnet
Nat Instance
    Unlike NAT Gateway and Internet Gateway, a NAT Instance is not a special service offered by AWS. It is just 
    a term for when using an EC2 instance to perform NAT Gateway-like functionality. It is similar to hosting database 
    software on an EC2 instance rather than using Amazon RDS.
    Because it is a self-managed instance, configuring routing, updating the software and operating system, and right-sizing 
    instances is the responsibility of the owner. 
    Similar to a NAT Gateway, a NAT Instance will need to be in a public subnet, and a private subnet will need a route 
    to the NAT Instance to have internet access.