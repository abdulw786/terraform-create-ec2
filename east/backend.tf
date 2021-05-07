terraform {
  backend "s3" {
    bucket = "surrendra-terraform1"
    key    = "petclinic/dev/tf.state"
    region = "us-east-1"
  }
}
