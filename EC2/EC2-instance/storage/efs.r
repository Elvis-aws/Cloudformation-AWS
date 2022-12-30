
**************************
Amazon Elastic File System
**************************
    - Compartible with Linux based AMI(Not Windows)
    - To add an EFS file system to an instance, we need to select a subnet.
    - Encryption at rest using KMS 
    Amazon Elastic File System (Amazon EFS) provides a simple, serverless, set-and-forget elastic file system 
    for use with AWS Cloud services and on-premises resources. It is built to scale on demand to petabytes 
    without disrupting applications, growing and shrinking automatically as you add and remove files.
    **********************************
    key features
    **********************************
        ****************
        1 Shared Storage
        ****************
            Files are accessible from AWS services as well as from on-premise. They can be simultaneously 
            accessed by up to a thousand EC2 instances within the cloud or via VPN or AWS Direct Connect. File 
            access is possible across multiple AWS Availability Zones and Regions, for easier collaboration 
            and global remote work.
        **********************
        2 Scalable Performance
        **********************
            EFS is designed for low latency with IOPS and throughput that scale with usage and the number 
            of attached instances, meaning that as storage size grows, performance increases. EFS scales 
            automatically as data is moved in or out.
        **********************
        3 Secure and Compliant
        **********************
            EFS allows multiple layers of security and relies on your existing security infrastructure. It 
            can be used with Amazons Identity and Access Management (IAM) roles. Encryption at rest using KMS.
            Attach a security group with inbound rules. 
    *********************
    Storage Class (life cycle management)
    *********************
        - Storage Tiers 
             Standard: For frequently accessed files 
            Infrequent Access 
        - Availability 
            Regional: Multy AZ 
            One Zone: One AZ 
    **************
    AWS EFS Backup
    **************
        ***********************
        1 Amazon Backup Service
        ***********************
            Enabled during EFS creation on the console 
            AWS Backup is a fully managed service that allows you to create, manage, and automate incremental 
            backups according to a schedule you define through a central location. It is possible to use 
            AWS Backup whether your system has a cloud-native, hybrid, or on-premise configuration.
        *******************
        2 EFS to EFS Backup
        *******************
            There is no built-in EFS backup, and EFS does not have a native snapshot mechanism. So, before 
            AWS Backup was released, backups had to be done using a template in AWS CloudFormation.
        *************************
        3 Backing Up to Amazon S3
        *************************
            Backing up your data to S3 is another option you might consider and one that can help decrease 
            your storage costs. This process begins the same as the EFS to EFS backup but rather than moving 
            the incremental backups from S3 to EFS at the end of the process, they are simply left in S3.
    ***********************************
    How to Optimize AWS EFS Performance
    ***********************************
        ********************************
        1 Monitor Your EFS Burst Credits
        ********************************
            One of the biggest shocks for EFS adopters comes the first time they run out of burst credits and 
            they see their performance sharply drop. Make sure that you monitor your burst credits.
        *********************************
        2 Dont Run Applications from EFS
        *********************************
            If you plan to run and host applications from EFS, Elastic Block Storage (EBS) is a better option 
            for you. EFS is not meant for the large file read volumes or fast speed that tasks like managing 
            codebases or application deployment require. Using EFS as it is designed, for storage of media 
            assets, exported data files, asynchronous logs, etc.
        ***********************************
        3 Choose the Right Performance Mode
        ***********************************
            Set at EFS creation time 
            EFS is designed with two different performance mode options:
                - General Purpose 
                    General Purpose is the default setting and the one that will work best for most users. 
                    It focuses on lower throughput levels in exchange for lower latency and is good for tasks 
                    like web-hosting and content management.
                - Max I/O
                    Max I/O focuses on higher throughput at the cost of higher latency, making it better for 
                    tasks such as big data analysis or media processing.