#!/bin/bash

case "$1" in
  start)
    echo "Starting Docker Compose services..."
    docker compose up -d

    echo "Waiting all service ready...."
    sleep 10
      

    echo "All services are up and healthy. Running entrypoint.sh..."
    chmod +x ./entrypoint.sh
    ./entrypoint.sh
    echo "Runner script completed."
    ;;

  stop)
    echo "Stopping Docker Compose services..."
    docker compose down
    echo "All services stopped."
    ;;

  *)
    echo "Usage: $0 {start|stop}"
    exit 1
    ;;
esac
