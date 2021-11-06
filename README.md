## Spring Boot and Docker

<p>To run the application type the following commands.</p>

    docker image build . -t proj
    docker container run -p 8080:8080 /var/run/docker.sock:/var/run/docker.sock -t proj