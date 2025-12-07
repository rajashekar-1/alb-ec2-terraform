## Project Architecture



                     Internet Users
                           |
                           v
                     +-----------+
                     |   ALB     |  (Listener: HTTP 80)
                     +-----------+
                           |
            -------------------------------
            |                             |
            v                             v
       +-----------+                  +-----------+
       |  EC2 Web1 |                  |  EC2 Web2 |
       |  SG: EC2  |                  |  SG: EC2  |
       +-----------+                  +-----------+
            |                             |
            --------------------------------
                           |
                           v
                         VPC











<img width="2484" height="1998" alt="image" src="https://github.com/user-attachments/assets/c15a68de-569b-4798-b903-2a79b6866507" />



