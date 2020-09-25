pipeline {
    agent any
    	stages {
		stage ('Building and running the container') {
			steps{
				sh (script: '''
                          	#!/bin/bash
							# Run the  Stack
								docker-compose up
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
