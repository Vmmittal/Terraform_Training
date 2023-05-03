resource "aws_s3_bucket" "vm_buckets" {
    for_each = var.bucket_names
    bucket = each.value
    tags= "${var.s3_tags}"
    
}