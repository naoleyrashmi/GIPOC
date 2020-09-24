pipeline {
    agent any
    	stages {
		stage('Git checkout') {
            steps {
                step([$class: 'WsCleanup'])
                checkout scm
            }
        }
		stage ('Building and running the container') {
			steps{
				sh (script: '''
                          	#!/bin/bash
							COMPOSE_ID=${JOB_NAME-local}
							# Remove Previous Stack
								docker-compose -p $COMPOSE_ID rm -f
							# Starting new stack environment
								docker-compose -p $COMPOSE_ID up -d --build
						''')
			 	}
			}  
		stage ('Removing container images') {
			steps{
				sh (script: '''
                          	#!/bin/bash
							
                            docker system prune --all
						''')
			 	}
			} 
		}
	}
