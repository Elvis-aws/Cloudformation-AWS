

**********************************
Sticky Sessions (Session Affinity)
**********************************
        ELB can be configured to use Sticky Session feature (also called session affinity) which enables it 
    to bind a users session to an instance and ensures all requests are sent to the same instance. Stickiness 
    remains for a period of time which can be controlled by the applications session cookie if one exists, or 
    through a cookie, named AWSELB , created through Elastic Load balancer. Sticky sessions for CLB and ALB 
    are disabled, by default. NLB does not support sticky sessions
    ************
    Requirements
    ************
        - An HTTP/HTTPS load balancer.
        - SSL traffic should be terminated on the ELB.
        - ELB does session stickiness on an HTTP/HTTPS listener by utilizing an HTTP cookie. ELB has no 
        visibility into the HTTP headers if the SSL traffic is not terminated on the ELB and is terminated on 
        the back-end instance.
    *********************************
    Duration-Based Session Stickiness
    *********************************
            Duration-Based Session Stickiness is maintained by ELB using a special cookie created to track the 
        instance for each request to each listener. When the load balancer receives a request,it first checks 
        to see if this cookie is present in the request. If so, the request is sent to the instance specified in 
        the cookie. If there is no cookie, the ELB chooses an instance based on the existing load balancing 
        algorithm and a cookie is inserted into the response for binding subsequent requests from the same user 
        to that instance. Stickiness policy configuration defines a cookie expiration, which establishes the 
        duration of validity for each cookie. Cookie is automatically updated after its duration expires.
    *****************************************
    Application-Controlled Session Stickiness
    *****************************************
            Load balancer uses a special cookie only to associate the session with the instance that handled the 
        initial request, but follows the lifetime of the application cookie specified in the policy configuration.
        Load balancer only inserts a new stickiness cookie if the application response includes a new application 
        cookie. The load balancer stickiness cookie does not update with each request. If the application 
        cookie is explicitly removed or expires, the session stops being sticky until a new application cookie 
        is issued. If an instance fails or becomes unhealthy, the load balancer stops routing request to that 
        instance, instead chooses a new healthy instance based on the existing load balancing algorithm. The 
        load balancer treats the session as now “stuck” to the new healthy instance, and continues routing 
        requests to that instance even if the failed instance comes back.