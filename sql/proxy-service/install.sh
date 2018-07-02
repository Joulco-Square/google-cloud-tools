# Run as ROOT

# Get Google SQL Proxy script
# https://cloud.google.com/sql/docs/mysql/connect-external-app#proxy
cd tmp/
wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
cp ./cloud_sql_proxy /usr/local/bin
chmod +x /usr/local/bin/cloud_sql_proxy

# Create required folders & set owner
mkdir /var/run/cloud-sql-proxy
chown root:root /var/run/cloud-sql-proxy
mkdir /var/local/cloud-sql-proxy
chown root:root /var/local/cloud-sql-proxy
