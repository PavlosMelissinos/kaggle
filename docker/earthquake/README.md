# Usage:

Build the image:

BE CAREFUL, TAKES SOME TIME (downloads about 7GB of packages)
`docker build . -t earthquake`

Run the container:
`docker run -v /home/pavlos:/home/jovyan/work -it --rm -p 8888:8888 earthquake start.sh jupyter lab`
