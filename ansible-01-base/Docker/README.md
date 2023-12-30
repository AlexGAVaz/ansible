 docker build -t centos7 -f Dockerfile.centos .
 docker build -t ubuntu20 -f Dockerfile.ubuntu .
 docker run -d -p 2223:22 --name centos centos7
 docker run -d -p 2222:22 --name ubuntu ubuntu20