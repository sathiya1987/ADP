provider "aws" {
  region = "${var.aws_region}"
}
resource "aws_instance" "adp-web" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${var.security_groups}"]
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"
  associate_public_ip_address = true
  tags {
    Name="WebServer" 
}
provisioner "local-exec" {
    command = "echo ${aws_instance.adp-web.private_ip} >> /home/centos/playbooks/hosts"
  }


provisioner "local-exec" {
	command = "ansible-playbook -i hosts /home/centos/playbooks/site.yml --private-key=/home/centos/p.pem"
  }


}




		
		
  
