terraform {
  backend "s3" {
    bucket = "surrendra-terraform"
    key    = "petclinic/dev/tf.state"
    region = "us-east-1"
  }
}
