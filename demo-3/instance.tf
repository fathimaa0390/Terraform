resource "aws_instance" "hameed" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  provisioner "local-exec" {
     command = "echo ${aws_instance.hameed.private_ip} >> private_ips.txt"
  }
}
output "publicip" {
    value = "${aws_instance.hameed.public_ip}"
}
output "privateip" {
    value = "${aws_instance.hameed.private_ip}"
}
