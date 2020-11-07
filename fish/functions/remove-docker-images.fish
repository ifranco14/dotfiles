function remove-docker-images
	remove-docker-containers

	echo "Removing docker images"
	docker rmi (docker images -f "dangling=true" -q)
end

