output "vpc_id" {
  value = "Web-VPC id : ${aws_vpc.myvpc.id}"
}


output "subnet_ids" {
  value = [
    "Public-Subnet-1a id : ${aws_subnet.sub1.id}",
    "Public-Subent-1b id : ${aws_subnet.sub2.id}"
  ]
}