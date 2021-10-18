## Spring Boot and Docker

<p>To run the application type the following commands.</p>
    
    sudo chmod +x run.sh
    docker build -t spring-app .
    docker run -e "JAVA_TOOL_OPTIONS=-agentlib:jdwp=transport=dt_socket,address=5005,server=y,suspend=n" -p 8080:8080 -p 5005:5005 -t spring-app