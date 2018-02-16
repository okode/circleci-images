# tomcat
Docker container repo for a simple tomcat stack using latest tomcat

# Building

    $ docker build . -t okode/tomcat

# Running

    $ docker run -d -p 8080:8080 okode/tomcat

Open http://localhost:8080/manager with user 'admin' and password 'admin'.
