
********************************************
X-Forwarded Headers & Proxy Protocol Support
********************************************
    As the Elastic Load Balancer intercepts the traffic between the client and the back-end servers, the 
    back-end server does not know the IP address, Protocol, and the Port used between the Client and the 
    Load balancer.
        - X-Forwarded-For request header to help back-end servers identify the IP address of a client when 
        you use an HTTP or HTTPS load balancer.
        - X-Forwarded-Proto request header to help back-end servers identify the protocol (HTTP/S) that a 
        client used to connect to the server
        - X-Forwarded-Port request header to help back-end servers identify the port that an HTTP or HTTPS 
        load balancer uses to connect to the client.
    ELB provides Proxy Protocol support to help back-end servers track the same when using non-HTTP protocol 
    or when using HTTPS and not terminating the SSL connection on the load balancer. 