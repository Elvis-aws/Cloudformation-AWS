

Gateways and endpoints
    A gateway connects your VPC to another network. For example, use an internet gateway to connect your VPC to the 
    internet. Use a VPC endpoint to connect to AWS services privately, without the use of an internet gateway or NAT 
    device.
    Use a VPC endpoint gateway to connect your EC2 instance in a private subnet to your S3 or DynamoDB which are outside
     of the VPC probably in another VPC
    Any time you want to privately connect to an AWS service, use VPC endpoint
    Attach the internet gateway to the VPC