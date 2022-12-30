
***********************************
Application Load Balancer benefits:
***********************************
    - Support for Path conditions
        You can configure rules for your listener that forward requests based on the URL in the request. This 
        enables you to structure your application as smaller services, and route requests to the correct service 
        based on the content of the URL.
    - Support for Host conditions
        You can configure rules for your listener that forward requests based on the host field in the HTTP 
        header. This enables you to route requests to multiple domains using a single load balancer.
    - Support for routing based on fields in the request
        Such as HTTP header conditions and methods, query parameters, and source IP addresses.
    - Support for routing requests to multiple applications on a single EC2 instance
        You can register an instance or IP address with multiple target groups, each on a different port.
    - Support for redirecting requests from one URL to another.
    - Support for returning a custom HTTP response.
    - Support for registering targets by IP address, including targets outside the VPC for the load balancer.
    - Support for registering Lambda functions as targets.
    - Support for the load balancer to authenticate users of your applications through their corporate or social 
        identities before routing requests.
    - Support for containerized applications. Amazon Elastic Container Service (Amazon ECS) can select an 
        unused port when scheduling a task and register the task with a target group using this port. This 
        enables you to make efficient use of your clusters.
    - Support for monitoring the health of each service independently, as health checks are defined at the 
        target group level and many CloudWatch metrics are reported at the target group level. Attaching a 
        target group to an Auto Scaling group enables you to scale each service dynamically based on demand.