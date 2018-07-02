Set up Google Cloud Platform to allow connection from external application
  https://cloud.google.com/sql/docs/mysql/connect-external-app#proxy
  Ensure API is set up
  Ensure Service account is set up
  Ensure JSON key is on server in folder /var/local/cloud-sql-proxy and that only root can read it
  
User install.sh to create required files & folders
Edit /etc/systemd/system/network-online.target.wants/cloud-sql-proxy.service
  Replace <INSTANCE_CONNECTION_NAME> with instance name as found on Google Cloud SQL page
  Replace <PATH_TO_KEY_FILE> with JSON key file path
  
Test the service with the following commands
  systemctl daemon-reload
  systemctl start cloud-sql-proxy
  
Database can now be accessed on 127.0.0.1
Test using: "mysql -u root -p --host 127.0.0.1" with password
