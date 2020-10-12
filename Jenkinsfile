pipeline {
    agent any
	parameters {
        string(name: 'PortNumber', description: 'Please Enter the Port Number for your application.'),
		string(name: 'User', description: 'Please Enter the name of User deployingapplication.')
	}
    	stages {
		stage ('Building and running the container') {
			steps{
				sh (script: '''
                          	#!/bin/bash
				            # SEtting Docker remote host
							export DOCKER_HOST=tcp://root@10.20.14.238:5555
							echo $DOCKER_HOST
				            export PortNumber=$PortNumber
							# Run the  Stack
						    docker-compose up -d 
						''')
			 	}
			}  
		}
	}
