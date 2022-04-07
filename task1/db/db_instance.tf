resource "aws_db_instance" "rds_sumanth" {

    allocated_storage               = 30
    storage_type                    = "gp2"
    engine                          = "mysql"
    engine_version                  = "5.7.22"
    instance_class                  = "db.t3.medium"
    db_name                         = "myrds_sumanth"
    username                        = "admin"
    password                        = "12345678"
    multi_az                        = true
    port                            = 3306
    db_subnet_group_name            = var.out_rdssubnetgroup
    vpc_security_group_ids          = [var.rdsmysqlsg]
    tags                            = {
            name                    = "RDS MySQL sumanth"
    }

  
}
