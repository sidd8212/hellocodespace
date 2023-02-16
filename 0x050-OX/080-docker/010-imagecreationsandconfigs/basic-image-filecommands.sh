# basic docker image commands
# 1. RUN # RUN is used to execute commands in a new layer on top of the current image and commit the results
# 2. CMD # CMD is used to provide defaults for an executing container
# 3. ENTRYPOINT # ENTRYPOINT is used to configure a container that will run as an executable
# 4. ADD # ADD is used to copy new files, directories or remote file URLs from <src> and add them to the filesystem of the image at the path <dest>
# 5. COPY # COPY is used to copy new files or directories from <src> and add them to the filesystem of the container at the path <dest>
# 6. ENV # ENV is used to set the environment variable <key> to the value <value>
# 7. EXPOSE # EXPOSE is used to inform Docker that the container listens on the specified network ports at runtime
# 8. VOLUME # VOLUME is used to create a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers
# 9. USER # USER is used to set the user name (or UID) and optionally the user group (or GID) to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile
# 10. WORKDIR # WORKDIR is used to set the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile
# 11. ARG # ARG is used to define a variable that users can pass at build-time to the builder with the docker build command using the --build-arg <varname>=<value> flag
# 12. ONBUILD # ONBUILD is used to add a trigger instruction to an image
# 13. STOPSIGNAL # STOPSIGNAL is used to set the system call signal that will be sent to the container to exit
# 14. LABEL # LABEL is used to add metadata to an image
# 15. SHELL # SHELL is used to set the default shell used for the shell form of commands
# 16. HEALTHCHECK # HEALTHCHECK is used to configure a check that is run to determine whether the container is healthy
# 17. MAINTAINER # MAINTAINER is used to set the Author field of the generated images
# 18. COMMENT # COMMENT is used to add comments to the Dockerfile
# 19. RUN # RUN is used to execute commands in a new layer on top of the current image and commit the results
# 20. RUN # RUN is used to execute commands in a new layer on top of the current image and commit the results
