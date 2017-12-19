resource "aws_db_instance" "odooDB_terra" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "9.6.3"
  instance_class       = "db.t2.micro"
  name                 = "${var.dbname}"
  username             = "${var.dbuser}"
  password             = "${var.dbpassword}"
  db_subnet_group_name = "${aws_db_subnet_group.main_bd_subnet_group.name}"
  parameter_group_name = "default.postgres9.6"
  publicly_accessible  = "false"
  vpc_security_group_ids = ["${aws_security_group.odooDBSG_terra.id}"]
  backup_retention_period = "0"
  skip_final_snapshot = true
  identifier = "odoodb-terra"

}

output "db_endpoint" {
  value = "${aws_db_instance.odooDB_terra.endpoint}"
}

output "db_address" {
  value = "${aws_db_instance.odooDB_terra.address}"
}
