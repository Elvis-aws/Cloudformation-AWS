
**********
Monitoring
**********
    - Elastic Load Balancing sends data about the load balancers and EC2 instances to CloudWatch. CloudWatch 
      collects data about the performance of your resources and presents it as metrics.
    - After registering one or more load balancers with the Auto Scaling group, the Auto Scaling group can be 
      configured to use ELB metrics (such as request latency or request count) to scale the application 
      automatically.
*******
Metrics
*******
      Metrics are the fundamental concept in Amazon CloudWatch. A metric represents a time-ordered set of data 
    points that are published to CloudWatch. Think of a metric as a variable to monitor, and the data points 
    as representing the values of that variable over time. You can use these metrics to verify that your 
    system is performing as expected.
**************************
Auto Scaling group metrics
**************************
      When group metrics are enabled, Amazon EC2 Auto Scaling sends the following metrics to CloudWatch. The 
    metrics are available at one-minute granularity at no additional charge, but you must enable them. With 
    these metrics, you get nearly continuous visibility into the history of your Auto Scaling group, such as 
    changes in the size of the group over time. GroupMinSize, GroupMaxSize, GroupDesiredCapacity, 
    GroupInServiceInstances, GroupPendingInstances, GroupStandbyInstances, GroupTerminatingInstances, 
    GroupTotalInstances.
**************
EC2 Monitoring
**************
      Amazon EC2 collects and processes raw data from instances into readable, near real-time metrics that 
    describe the CPU and other usage data for your Auto Scaling group. You can configure the interval for 
    monitoring these metrics by choosing one-minute or five-minute granularity. Instance monitoring is enabled 
    whenever an instance is launched, using either basic monitoring (five-minute granularity) or detailed 
    monitoring (one-minute granularity). If you add a scaling policy to your group, we strongly recommend that 
    you use detailed monitoring to get metric data for EC2 instances at a one-minute granularity, because that 
    achieves a faster response to changes in load.
