# web-ssh-example
<sub>Example of configuring SSH for use in App Service, and using a variable to enable/disable SSH.</sub>
<sub>This example is not intended for production use.</sub>

## About
- This repository includes an example for Alpine and Bullseye-slim images.
- Both examples are using an express.js hello world.
- In the docker entrypoint, we pass a startup script which contains a check for the variable "$SSH_ON"
  - If this variable is not set to true, SSH will be disabled.

## Building and Running Locally
- To build the image simply clone this respository and run docker build from the example folder you wish to use.
```
cd alpine
docker build -t <image name> .
```
- After building, you can test the image locally with the following example docker run command.
```
docker run -e SSH_ON=true -e PORT=80 -d -p 8080:80 -p 2222:2222 <image name>
```
- By excluding '-e SSH_ON=true', SSH will be disabled.
  
## Running in App Service
- Deploy your custom container to a new Linux App Service.
- From the Configuration menu, add the app setting 'SSH_ON' with the value 'true'
  - To disable SSH on the container, simply delete the App Setting, or set it to 'false'.
