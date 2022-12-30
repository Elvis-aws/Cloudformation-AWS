
********************
On-Demand Instances
********************
    - Billing per second 
    - Uninterupted work load 
    - Short term 
    - With On-Demand Instances, you pay for compute capacity by the second with no long-term commitments. 
    You have full control over its lifecycle—you decide when to launch, stop, hibernate, start, reboot, or 
    terminate it. You pay only for the seconds that your On-Demand Instances are in the running state, with 
    a 60-second minimum.
********************
Reserved Instances
********************
    - You rerve a specific instance attribute e.g (Instance Type, region, Tenancy, OS)
    - Reservation period is 1 year or 3 years
    - For steady stage usage e.g Data base 
    - Reserved Instances provide you with significant savings on your Amazon EC2 costs compared to On-Demand 
    Instance pricing. Reserved Instances are not physical instances, but rather a billing discount applied to 
    the use of On-Demand Instances in your account. These On-Demand Instances must match certain attributes, 
    such as instance type and Region, in order to benefit from the billing discount.
*****************************
Scheduled Reserved Instances
*****************************
    - With Scheduled Reserved Instances, you can reserve capacity that is scheduled to recur daily, weekly, 
    or monthly, with a specified start time and duration, for a one-year term. After you complete your purchase, 
    the instances are available to launch during the time windows that you specified.
***************
Spot Instances
***************
    - 
    - A Spot Instance is an instance that uses spare EC2 capacity that is available for less than the On-Demand 
    price. Because Spot Instances enable you to request unused EC2 instances at steep discounts, you can lower 
    your Amazon EC2 costs significantly. The hourly price for a Spot Instance is called a Spot price. The Spot 
    price of each instance type in each Availability Zone is set by Amazon EC2, and is adjusted gradually based 
    on the long-term supply of and demand for Spot Instances. Your Spot Instance runs whenever capacity is 
    available.
***************
Dedicated Hosts
***************
    - A physical server with EC2 instance capacity fully dedicated to your use 
    - Bring your own licesence or complience needs
    - An Amazon EC2 Dedicated Host is a physical server with EC2 instance capacity fully dedicated to your use. 
    Dedicated Hosts allow you to use your existing per-socket, per-core, or per-VM software licenses, including 
    Windows Server, Microsoft SQL Server, SUSE, and Linux Enterprise Server.
********************
Dedicated Instances
********************
    - You may share instances with other accounts 
    - Instances run on hardware dedicated to you 
    - No control over instance placement
    - Dedicated Instances are Amazon EC2 instances that run in a virtual private cloud (VPC) on hardware thats 
    dedicated to a single customer. Dedicated Instances that belong to different AWS accounts are physically 
    isolated at a hardware level, even if those accounts are linked to a single payer account. However, 
    Dedicated Instances might share hardware with other instances from the same AWS account that are not 
    Dedicated Instances.
*******************************
On-Demand Capacity Reservations
*******************************
    -On-Demand Capacity Reservations enable you to reserve compute capacity for your Amazon EC2 instances in a 
    specific Availability Zone for any duration. This gives you the ability to create and manage Capacity 
    Reservations independently from the billing discounts offered by Savings Plans or Regional Reserved Instances.