# CardGameContainers

This is a personal pet exploration project running my Cardgame Java Web Application in containers.

## Instructions
Clone the repository.
Run the create containers script
Access the application at http://localhost:8888/CardGame

## Architecture
The application is running on a Tomcat 9 app server. 
It uses 2 micro services written in Golang.
First micro service is a lookup service
Second is a commission calculator service
It also uses a mongo db database to store user information.

## Further developments
Will enhance the application as I explore more.
