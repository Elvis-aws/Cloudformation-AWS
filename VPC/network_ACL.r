

Network Access Control Lists – NACLs
    - A Network ACLs (NACLs) is an optional layer of security for the VPC that acts as a firewall for 
    controlling traffic in and out of one or more subnets.
    - Are not for granular control and are assigned at a Subnet level and are applicable to all the instances 
    in that Subnet
    - Has separate inbound and outbound rules, and each rule can either allow or deny traffic
        Default ACL allows all inbound and outbound traffic.
        The newly created ACL denies all inbound and outbound traffic.
    - A Subnet can be assigned only 1 NACL and if not associated explicitly would be associated implicitly with 
    the default NACL
    - Can associate a network ACL with multiple subnets
    - Is a numbered list of rules that are evaluated in order starting with the lowest numbered rule, to 
    determine whether traffic is allowed in or out of any subnet associated with the network ACL e.g. if 
    you have a Rule No. 100 with Allow All and 110 with Deny All, the Allow All would take precedence and 
    all the traffic will be allowed.
    - Are Stateless; responses to allowed inbound traffic are subject to the rules for outbound traffic 
    (and vice versa) for e.g. if you enable Inbound SSH on port 22 from the specific IP address, you would 
    need to add an Outbound rule for the response as well.
