provider "aws" {
      region = "ca-central-1"
}
resource "aws_instance" "app" {
    ami           = "ami-0b97ca2f2497c83d2"
    instance_type = "t2.micro"
    security_groups = ["jkSG"]
    key_name      =  "rella01key"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
