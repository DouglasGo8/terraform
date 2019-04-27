


output "public_ip" {
  value = "${aws_instance.ami_microinst_solo.public_ip}"
}
