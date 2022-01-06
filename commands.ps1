# Build image from Dockerfile
docker build -t yourtag/imagename .

# Run image as active container
docker run -p 8080:80 yourtag/imagename

# Create SQL Server container
# -e is environment
# -p is port mapping
# -d is running detatched so that the command line is free for use
# Note that password can be anything

# IMPORTANT
# Skip the command below, it will be added by docker-compose otherwise it will not connect to the database
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P@SSw0rd' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu

# To use docker-compose, remove all containers and images and go to docker-compose.yaml

## Service name in yaml file is the database server name