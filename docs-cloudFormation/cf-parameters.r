
*****************
Pseudo parameters
***************** 
    - These are parameters that are predefined by AWS CloudFormation
    - You dont declare them in your template
    - Use them the same way as you would a parameter, as the argument for the Ref function.
"""
Outputs:
  MyStacksRegion:
    Value: !Ref "AWS::Region"
"""
