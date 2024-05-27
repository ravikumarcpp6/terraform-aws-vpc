### AWS VPC Module

This Module creates following Resources. We are using HA, We are getting first 2 AZ automatically.
* VPC
* Internet Gateway with VPC Association
* 2 Public Subnets in 1A and 1B
* 2 Private Subnets in 1A and 1B
* 2 Database Subnets in 1A and 1B
* Elastic IP
* NAT gateway in 1A Public Subnet
* Public Route Table
* Private Route Table
* Database Route Table
* Subnets and Route table Association
* VPC Peering if user requests
* Adding the peering route in default VPC, If user don't provide acceptor VPC explicitly
* Adding the Peering routes in public, private and database route tables 

### Inputs

* Project_Name (Required) - Your Project Name
* Environment (Required) - Which Environment you are working in.
* VPC_CIDR (Optional) - Default value is 10.0.0.0/16, user can override
* enable_dns_hostnames (Optional) - Default value is true
* common_tags (optional) - better to provide
* vpc_tags (optional)
* igw_tags (optional)
* public_subnets_cidr (Required) - User Must provide 2 valid Public Subnets CIDR
* public_subnets_tags (optional)
* private_subnets_cidr (Required) - User Must provide 2 valid Private Subnets CIDR
* private_subnets_tags (optional)
* database_subnets_cidr (Required) - User Must provide 2 valid Database Subnets CIDR
* database_subnets_tags (optional)
* nat_gateway_tags(optional)
* public_route_table_tags (optional)
* private_route_table_tags (optional)
* database_route_table_tags (optional)
* is_peering_required (optional) - default value is false
* acceptor_vpc_id (optional) - default value is default VPC ID
* vpc_peering_tags (optional) - default value is empty and type is map.

### Outputs
* vpc_id - VPC ID created