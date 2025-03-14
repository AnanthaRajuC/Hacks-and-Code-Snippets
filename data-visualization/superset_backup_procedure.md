# Apache Superset Dashboard Backup Procedure

## Prerequisites
- Apache Superset is installed and running inside Docker.
- You have the necessary permissions to execute Docker commands.
- Ensure that Docker Compose is installed and configured properly.
- A designated backup folder exists on your system.

## Steps to Perform Backup

### 1. Navigate to the Superset Directory
```sh
cd /superset
```
Ensure you are in the directory where the Apache Superset instance is managed via Docker Compose.

### 2. Check Running Containers
```sh
docker ps
```
Verify that the Superset container is running.

### 3. Export Dashboards
```sh
docker compose exec superset superset export-dashboards
```
This command exports all dashboards into a zip file inside the Superset container.

### 4. List Exported Files
```sh
docker compose exec superset ls -l
```
Confirm the existence of the exported dashboard file. The filename format typically follows:  
`dashboard_export_YYYYMMDDTHHMMSS.zip`

### 5. Copy the Exported File to the Backup Folder
```sh
docker compose cp superset:/app/dashboard_export_20250310T051616.zip /my/backup/folder
```
Replace the filename with the actual exported file name.

### 6. Navigate to the Backup Folder
```sh
cd /my/backup/folder
```
Confirm that the exported dashboard file is stored in the designated backup location.

## Notes
- Ensure that the backup folder has sufficient storage space.
- Consider automating this backup process using a cron job.
- Regularly test the backup restoration process to verify data integrity.
