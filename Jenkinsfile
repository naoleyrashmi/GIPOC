pipeline {
    agent any
	parameters {
        string(name: 'PortNumber', description: 'Please Enter the Port Number for your application.')
        choice(name: 'Number', description: 'Please select the Port Number', choices: '9997\9998')
    	stages {
		stage ('Building and running the container') {
			steps{
				sh (script: '''
                          	#!/bin/bash
				            # SEtting Docker remote host
							export DOCKER_HOST=tcp://root@10.20.14.238:5555
							echo $DOCKER_HOST
							# Run the  Stack
						    docker-compose up -d
						''')
			 	}
			}  
		}
	}
