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


![ALB Architecture](./images/alb-architecture.png)
