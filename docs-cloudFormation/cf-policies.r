

****************************
Template Resource Attributes
****************************
    Attributes allow you add to a resource, to control additional behavior and relationships between your templates
    **************
    CreationPolicy
    **************
        - Associate the CreationPolicy attribute with a resource when you want to delay resource configuration actions 
          before proceeding with stack creation
        - With this attribute, a stack creation is delayed until AWS CloudFormation receives a specified number of 
          success signals
    **************
    DeletionPolicy
    **************
        - Using DeletionPolicy, preserving and backing up a resource is possible when its stack is deleted
        - By default, AWS CloudFormation deletes the resource and all its content if a resource has no DeletionPolicy 
          attribute in a template. 
        - Before deleting a resource, AWS CloudFormation creates a snapshot of that resource
        - When this stack is deleted, AWS CloudFormation leaves the bucket without deleting it
    *********
    DependsOn
    *********
        - Using the DependsOn attribute in a template, you can define the creation of a specific resource followed by 
          another resource
    ********
    Metadata
    ********
        - The Metadata attribute lets you associate a resource with structured data
    ************
    UpdatePolicy
    ************
        - With the UpdatePolicy attribute in AWS CloudFormation, you can manage and replace the updates of the 
          instances in the Auto Scaling group