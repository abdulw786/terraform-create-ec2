terraform {
  backend "s3" {
    bucket = "surrendra-terraform2"
    key    = "petclinic/dev/tf.state"
    region = "us-east-1"
  }
}
