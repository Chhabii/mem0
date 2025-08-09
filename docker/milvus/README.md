```bash
mkdir -p volumes/minio volumes/etcd volumes/milvus

docker compose up -d
```
| Port     | Inside MinIO               | Purpose                                                                                                                               |
| -------- | -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **9000** | S3-compatible API endpoint | This is where clients (like `aws-cli`, Python SDKs, or Milvus) send object storage requests.                                          |
| **9001** | Web console UI             | This is MinIO’s browser-based management interface, where you can log in, browse buckets, upload/download files, and manage settings. |
