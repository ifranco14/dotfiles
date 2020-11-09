function CLEAN-ALL-DOCKER
	remove-docker-images
	echo "Cleaning docker"
	docker volume rm (docker volume ls -qf dangling=true)
	echo "Done"
end
