*************************
Amazon EC2 instance store
*************************
    - For very high I/O performance 
    - If stoped store is lost (Ephemeral)
    - Replication and back-up are your responsibility
    - An instance store provides temporary block-level storage for your instance. This storage is located on 
    disks that are physically attached to the host computer. Instance store is ideal for temporary storage 
    of information that changes frequently, such as buffers, caches, scratch data, and other temporary 
    content.
    ***********************
    Instance store lifetime
    ***********************
        - The underlying disk drive fails
        - The instance stops
        - The instance hibernates
        - The instance terminates