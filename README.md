# WebSockets

- WebSockets are bi-directional, full-duplex communications protocol initiated over HTTP.
- Mostly used for streaming data and other asynchronous applications.
- Many modern web applications use web sockets.
- They provide long-lived asynchronous communications in both directions and are initiated over HTTP.


# What this repo is about ?
Well, it is a simple web application using Socket.io and Node.js. It is a chat application.


# Docker instructions
1. Install Docker
2. Build the Docker image with the following command:
   ```bash
    docker build -t websockets-basic:latest .
   ``` 
3. Run the Docker image with the following command:
   ```bash
    docker run -p 3000:3000 -p 8000:80 -it websockets-basic
   ```
4. Open your browser and go to http://localhost:8000/