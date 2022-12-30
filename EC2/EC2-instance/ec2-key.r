
*******************
Amazon EC2 key pair
*******************
        A key pair, consisting of a public key and a private key, is a set of security credentials that you use 
    to prove your identity when connecting to an Amazon EC2 instance. Amazon EC2 stores the public key on 
    your instance, and you store the private key. 
        You can use Amazon EC2 to create your key pairs. You can also use a third-party tool to create your 
    key pairs, and then import the public keys to Amazon EC2.
***********************************
Error: Unprotected private key file
***********************************
        Your private key file must be protected from read and write operations from any other users. If your 
    private key can be read or written to by anyone but you, then SSH ignores your key and you see the following 
    warning message below.

    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    @         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Permissions 0777 for '.ssh/my_private_key.pem' are too open.
    It is required that your private key files are NOT accessible by others.
    This private key will be ignored.
    bad permissions: ignore key: .ssh/my_private_key.pem
    Permission denied (publickey).

    If you are connecting from MacOS or Linux, run the following command to fix this error, substituting the 
    path for your private key file.

    """ chmod 0400 .ssh/my_private_key.pem """

