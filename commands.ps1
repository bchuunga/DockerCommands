# Build image from Dockerfile
docker build -t yourtag/imagename .

# Run image as active container
docker run -p 8080:80 yourtag/imagename

# Create SQL Server container
# -e is environment
# -p is port mapping
# -d is running detatched so that the command line is free for use
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P@SSw0rd' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu