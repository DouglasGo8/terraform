


output "elb_dns_name" {
  value = "${aws_elb.ami_cluster_elb.dns_name}"
}
