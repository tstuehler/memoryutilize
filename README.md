# memoryutilize

Docker image running a JEE application that allows to control the memory consumption thus giving you the ability to investigate garbage collector activities. 
Furthermore, one can create OutOfMemoryError on request. This is used together with the s3dumpshipper container as sidecar in k8s for testing heapdump shipment on OOME to a S3 bucket.
