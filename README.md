Build the filebeat image with the command:
- docker build -t filebeat-root .
Deploy the filebeat service with the command:
- docker stack deploy -c docker-stack.yml beat
