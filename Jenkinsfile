pipeline {
    agent any
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
		stage ('Removing unused container images') {
			steps{
				sh (script: '''
                          	#!/bin/bash
                            docker system prune --all
						''')
			 	}
			} 
		}
	}
