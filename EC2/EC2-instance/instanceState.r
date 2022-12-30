************
Hibernating
************
    - The memory state is preserved
    - Since the memory state is perserved and loaded again when the instance start, this reduces the boot 
    time of the instance.
    - The long running process can continue without interuption
    - A great benefit if you have some services that take a great amount of time to fully initialized
******
Stop
******
    - Data stored in the RAM is lost.
    - Data stored in the instance store volume is lost.
    - The public IPv4 address changes
    - Data stored in the Amazon EBS volumes remains.
    - Private IPv4 addresse does not change
    - Elastic IP addresses remains 
*********
Terminate
*********
    - instance dissappears 