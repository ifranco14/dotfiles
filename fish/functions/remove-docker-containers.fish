
function remove-docker-containers
	echo "Stop running docker"
	docker stop (docker ps -q)
	echo "Removing docker containers"
	docker rm (docker ps -a -q)
end
