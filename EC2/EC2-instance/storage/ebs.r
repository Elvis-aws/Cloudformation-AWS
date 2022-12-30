
************
EBS Volumes
***********
    The Elastic Block Store (EBS) provides persistent, high-performance, and high-availability block-level 
    storage which you can attach to a running EC2 instance (in the same availability zone) in the form of 
    volumes. There are two types of volumes you can create: Standard and Provisioned IOPS. 
        - A Standard volume is best suited for boot volumes.
        - Provisioned IOPS volumes are designed to provide predictable, high performance I/O workloads.
   - User-defined storage size of each EBS Volume: 1GB - 1TB
   - Volumes can only be mounted by one instance at any time.
   - Instances can only attach EBS Volumes that are in the same Availability Zone.
   - Multiple EBS Volumes can be attached to the same instance.
   - Multiple EC2 instances can be attached to a single EBS Volumes (Enable the multi-attach feature)
     up to 16 instances at a time. 
   - To start using a new volume, you have to format the volume 
   - Create an EBS Snapshot of an EBS Volume at any point in time.
   - EBS Snapshots are incrementally saved on S3. But hidden from S3 bucket and file lists.
   - Create multiple EBS Volumes from the same EBS Snapshot in any Zone.
   - EBS volumes and snapshots are EC2-region specific.
*****************************
Benefits of using EBS volumes
*****************************
    ******************
    1 Data availability
    ******************
        When you create an EBS volume, it is automatically replicated within its Availability Zone to prevent 
        data loss due to failure of any single hardware component. 
    ******************
    2 Data persistence
    ******************
        An EBS volume is off-instance storage that can persist independently from the life of an instance. 
        You continue to pay for the volume usage as long as the data persists. 
    **************
    3 Data security
    **************
        Amazon EBS volumes are presented to you as raw, unformatted block devices. These devices are logical 
        devices that are created on the EBS infrastructure and the Amazon EBS service ensures that the devices 
        are logically empty.
    *********
    4 Snapshots
    *********
        Amazon EBS provides the ability to create snapshots (backups) of any EBS volume and write a copy of 
        the data in the volume to Amazon S3 (Archive), where it is stored redundantly in multiple Availability Zones. 
        The volume does not need to be attached to a running instance in order to take a snapshot. As you continue 
        to write data to a volume, you can periodically create a snapshot of the volume to use as a baseline 
        for new volumes. These snapshots can be used to create multiple new EBS volumes or move volumes across 
        Availability Zones. Snapshots of encrypted EBS volumes are automatically encrypted.
            ***************
            1 Copy Snapshot
            ***************
                When you create a new volume from a snapshot, its an exact copy of the original volume. By 
                optionally specifying a different Availability Zone, you can use this functionality to create 
                a duplicate volume in that zone. The snapshots can be shared with specific AWS accounts or made 
                public. When you create snapshots, you incur charges in Amazon S3 based on the volumes total size.
            **************
            2 Recycle Bin 
            **************
                Setup rules to retain deleted snapshorts
                Specify retention (1 day to 1 year)
    ***********
    5 Flexibility
    ***********
        EBS volumes support live configuration changes while in production. You can modify volume type, volume 
        size, and IOPS capacity without service interruptions.
************************
Amazon EBS volume types
************************
    ***************************
    1 General Purpose SSD volumes
    ***************************
        General Purpose SSD (gp2 and gp3) volumes are backed by solid-state drives (SSDs). They balance price 
        and performance for a wide variety of transactional workloads. These include virtual desktops, 
        medium-sized single instance databases, latency sensitive interactive applications, development and 
        test environments, and boot volumes. We recommend these volumes for most workloads. Amazon EBS offers 
        two types of General Purpose SSD volumes:
            - General Purpose SSD (gp3) volumes—latest generation General Purpose SSD volume
            - General Purpose SSD (gp2) volumes
    ****************************
    Provisioned IOPS SSD volumes
    ****************************
        Provisioned IOPS SSD volumes are backed by solid-state drives (SSDs). They are the highest performance 
        Amazon EBS storage volumes designed for critical, IOPS-intensive, and throughput-intensive workloads 
        that require low latency. Amazon EBS offers three types of Provisioned IOPS SSD volumes:
            - Provisioned IOPS SSD (io2) volumes
            - Provisioned IOPS SSD (io2) Block Express volumes
            - Provisioned IOPS SSD (io1) volumes
    *********************************************
    Throughput Optimized HDD and Cold HDD volumes
    *********************************************
        The HDD-backed volumes provided by Amazon EBS fall into these categories:
        Throughput Optimized HDD — A low-cost HDD designed for frequently accessed, throughput-intensive 
        workloads. Cold HDD — The lowest-cost HDD design for less frequently accessed workloads.
    ************************************
    Previous generation Magnetic volumes
    ************************************
        The following table describes previous-generation EBS volume types. If you need higher performance 
        or performance consistency than previous-generation volumes can provide, we recommend that you consider 
        using General Purpose SSD (gp2 and gp3) or other current volume types.