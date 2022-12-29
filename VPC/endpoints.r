

VPC Endpoint
    Some AWS resources have a public endpoint like S3, this uses a public DNS
    Interface Endpoint
        Using ENI, an EC2 in a private subnet can connect to other AWS resources privately and that are hosted in
        another VPC
    Gateway Endpoint
        Use a route table entry to point traffic to an S3 bucket or DynamoDB table