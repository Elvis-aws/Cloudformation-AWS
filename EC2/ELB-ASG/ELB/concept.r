
*********************
Elastic Load Balancer
*********************
    - Elastic Load Balancing automatically distributes your incoming traffic across multiple targets, such as 
    EC2 instances, containers, and IP addresses, in one or more Availability Zones. It monitors the health 
    of its registered targets, and routes traffic only to the healthy targets. Elastic Load Balancing scales 
    your load balancer capacity automatically in response to changes in incoming traffic.
    - Elastic Load Balancing supports the following load balancers: Application Load Balancers, Network Load 
    Balancers, Gateway Load Balancers, and Classic Load Balancers.
    Related services
        Elastic Load Balancing works with the following services to improve the availability and scalability 
        of your applications.
            **********
            Amazon EC2
            **********
                — Virtual servers that run your applications in the cloud. You can configure your load balancer 
                to route traffic to your EC2 instances.
            ***********************
            Amazon EC2 Auto Scaling
            ***********************
                — Ensures that you are running your desired number of instances, even if an instance fails. 
                Amazon EC2 Auto Scaling also enables you to automatically increase or decrease the number of 
                instances as the demand on your instances changes. If you enable Auto Scaling with Elastic 
                Load Balancing, instances that are launched by Auto Scaling are automatically registered with 
                the load balancer. Likewise, instances that are terminated by Auto Scaling are automatically 
                de-registered from the load balancer.
            ***********************
            AWS Certificate Manager
            ***********************
                — When you create an HTTPS listener, you can specify certificates provided by ACM. The load 
                balancer uses certificates to terminate connections and decrypt requests from clients.
            *****************
            Amazon CloudWatch
            ***************** 
                — Enables you to monitor your load balancer and to take action as needed.
            **********
            Amazon ECS
            **********
                — Enables you to run, stop, and manage Docker containers on a cluster of EC2 instances. You 
                can configure your load balancer to route traffic to your containers.
            **********************
            AWS Global Accelerator
            **********************
                — Improves the availability and performance of your application. Use an accelerator to 
                distribute traffic across multiple load balancers in one or more AWS Regions.
            ********
            Route 53
            ********
                — Provides a reliable and cost-effective way to route visitors to websites by translating 
                domain names into the numeric IP addresses that computers use to connect to each other.
            *******
            AWS WAF
            *******
                — You can use AWS WAF with your Application Load Balancer to allow or block requests based 
                on the rules in a web access control list (web ACL).