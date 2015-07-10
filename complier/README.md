go multiple-compiler by using docker 


# suppose

Your Go is installed under /usr/local/go
Your docker server is installed and started

# preparation
Using `docker pull markshao/golang-1.3-crosscompile` to pull the compile image into local
Download the godep tool, 
You can create a tmp folder like /Users/tim/tmp
Set the GOPATH = /Users/tim/tmp
Call `go get github.com/tools/godep` to download the godep binary
Copy the /Users/tim/tmp/bin/godep to /usr/local/go/bin
# preparation
Create a folder called ‘paladin’,suppose the path is /Users/cesc/project/paladin, and create subfolders ‘bin’,’src’,’pkg’ under it.
Set the GOPATH = /Users/cesc/project/paladin
Go to /Users/cesc/project/paladin/src , checkout the project https://github.com/markshao/paladin in to the search
Install the required package locally, run the command ‘go get github/docker/swarm’,’go get github/docker/machine’ , it will download the code into your src folder , currently they are not imported by our paladin , but we have to do it , because the network is fast in company only.
Try to using the ./script/build.sh to build , remember under the src/paladin folder . 

