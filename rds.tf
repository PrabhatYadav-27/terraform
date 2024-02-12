resource "aws_db_instance" "gfg-rds" {
    allocated_storage = 10
    db_name = "gfgdb"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    username = "admin "
    password ="higfgrds123"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
    
}