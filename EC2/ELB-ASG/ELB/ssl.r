
*****************************
SSL Negotiation Configuration
*****************************
    - For HTTPS load balancers, Elastic Load Balancing uses a Secure Socket Layer (SSL) negotiation configuration, 
      known as a security policy, to negotiate SSL connections between a client and the load balancer.
    - Elastic Load Balancer supports multiple certificates using Server Name Indication (SNI)
    - If the hostname provided by a client matches a single certificate in the certificate list, the load balancer 
      selects this certificate.
    - If a hostname provided by a client matches multiple certificates in the certificate list, the load balancer 
      selects the best certificate that the client can support.
    - Classic Load Balancer does not support multiple certificates
    - ALB and NLB support multiple certificates