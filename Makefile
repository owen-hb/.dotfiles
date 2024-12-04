# Makefile for setting up and cleaning the environment

# Run the linux.sh script (setup environment)
linux: clean
	./bin/linux.sh


	# Run the cleanup.sh script (clean environment)
clean:
	./bin/cleanup.sh

