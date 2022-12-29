

**********
Conditions
**********
    - The optional Conditions section contains statements that define the circumstances under which entities are 
      created or configured
  *****************************
  Condition intrinsic functions
  *****************************
      Fn::And
      Fn::Equals
      Fn::If
      Fn::Not
      Fn::Or
  ********
  Examples
  ********
      - The following sample template includes an EnvType input parameter, where you can specify prod to create a 
        stack for production or test to create a stack for testing. 
      - For a production environment, AWS CloudFormation creates an Amazon EC2 instance and attaches a volume to 
        the instance. 
      - For a test environment, AWS CloudFormation creates only the Amazon EC2 instance