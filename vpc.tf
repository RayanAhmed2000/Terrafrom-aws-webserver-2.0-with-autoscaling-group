resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "key" = "Webserver-VPC"
  }


}

resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/26"
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "sub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.64/26"
  availability_zone = "ap-south-1b"

}
