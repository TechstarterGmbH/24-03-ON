
### S3 (Simple Storage Service)
- **Bucket-Liste anzeigen:**
  ```
  aws s3 ls --profile YourProfileName
  ```
- **Bucket erstellen:**
  ```
  aws s3 mb s3://YourBucketName --profile YourProfileName
  ```
- **Bucket löschen:**
  ```
  aws s3 rb s3://YourBucketName --profile YourProfileName
  ```

### DynamoDB
- **Tabellen anzeigen:**
  ```
  aws dynamodb list-tables --profile YourProfileName
  ```
- **Tabelle löschen:**
  ```
  aws dynamodb delete-table --table-name YourTableName --profile YourProfileName
  ```

Ersetze `YourProfileName`, `YourInstanceID`, `YourKeyPairName`, `YourSecurityGroupID`, `YourSubnetID`, `YourBucketName`, `YourTableName` usw. durch deine eigenen spezifischen Werte.
