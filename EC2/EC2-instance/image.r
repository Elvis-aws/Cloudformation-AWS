
***************************
Amazon Machine Images (AMI)
***************************
        An Amazon Machine Image (AMI) is a supported and maintained image provided by AWS that provides the 
    information required to launch an instance. You must specify an AMI when you launch an instance. You can 
    launch multiple instances from a single AMI when you require multiple instances with the same configuration.
    
    ************
    create Image
    ************
        Create image from scratch and define software in user data section 
        Create image from existing instance 
    
    ***********
    Copy an AMI
    ***********
            You can copy an Amazon Machine Image (AMI) within or across AWS Regions. You can copy both Amazon 
        EBS-backed AMIs and instance-store-backed AMIs. You can copy AMIs with encrypted snapshots and also change 
        encryption status during the copy process. You can copy AMIs that are shared with you. Copying a source 
        AMI results in an identical but distinct target AMI with its own unique identifier.

    **************
    Deregister AMI
    **************
        To delete an AMI, we deregister it 
        You can change or deregister the source AMI with no effect on the target AMI. The reverse is also true.