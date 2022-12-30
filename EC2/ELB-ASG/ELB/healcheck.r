
************************************
Health checks for your target groups
************************************
        Your Application Load Balancer periodically sends requests to its registered targets to test their status. 
    These tests are called health checks. Each load balancer node routes requests only to the healthy targets 
    in the enabled Availability Zones for the load balancer. Each load balancer node checks the health of each 
    target, using the health check settings for the target groups with which the target is registered. After 
    your target is registered, it must pass one health check to be considered healthy. After each health check 
    is completed, the load balancer node closes the connection that was established for the health check.
    *********************
    - HealthCheckProtocol
    *********************
        The protocol the load balancer uses when performing health checks on targets. The possible protocols 
        are HTTP and HTTPS. The default is the HTTP protocol.
    *****************
    - HealthCheckPort
    *****************
        The port the load balancer uses when performing health checks on targets. The default is to use the port 
        on which each target receives traffic from the load balancer.
    *****************
    - HealthCheckPath
    *****************
        The destination for health checks on the targets. If the protocol version is HTTP/1.1 or HTTP/2, specify 
        a valid URI (/path?query). The default is /.
    ***************************
    - HealthCheckTimeoutSeconds
    ***************************
        The amount of time, in seconds, during which no response from a target means a failed health check. 
        The range is 2-120 seconds. The default is 5 seconds if the target type is instance or ip and 30 seconds 
        if the target type is lambda.
    ****************************
    - HealthCheckIntervalSeconds
    ****************************
        The approximate amount of time, in seconds, between health checks of an individual target. The range 
        is 5-300 seconds. The default is 30 seconds if the target type is instance or ip and 35 seconds if the 
        target type is lambda.
    ***********************
    - HealthyThresholdCount
    ***********************
        The number of consecutive successful health checks required before considering an unhealthy target healthy. 
        The range is 2-10. The default is 5.
    *************************
    - UnhealthyThresholdCount
    *************************
        The number of consecutive failed health checks required before considering a target unhealthy. The range 
        is 2-10. The default is 2.