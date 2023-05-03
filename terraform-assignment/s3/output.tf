output "All-buckets" {
    value = [for x in aws_s3_bucket.vm_buckets: x.id] 
}