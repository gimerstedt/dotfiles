function drmexited { docker rm $(docker ps -aqf status=exited); }
function drmstopped { docker rm $(docker ps -aq); }
function drmiuntagged { docker rmi $(docker images -q --filter "dangling=true"); }

function gcam()
{
	git add .
	git commit -m "$@"
	git pull --rebase
}

killjava(){
	taskkill  /PID `ps -W | grep 'java.exe' | awk '{print $1}'` /F
}
