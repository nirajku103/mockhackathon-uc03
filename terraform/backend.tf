terraform {
  backend "s3" {
    bucket         = "mockhackathon-uc03"
    key            = "terraform"
    region         = "eu-north-1"
  }
}