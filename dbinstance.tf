resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  db_name              = "mikeydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "root"
  password             = "root"
  skip_final_snapshot  = true
  depends_on = [
    module.vpc,aws_db_subnet_group.dbsubnetgroup
  ]
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  db_subnet_group_name = aws_db_subnet_group.dbsubnetgroup.name
}