function drmexited { docker rm $(docker ps -aqf status=exited); }
function drmstopped { docker rm $(docker ps -aq); }
function drmiuntagged { docker rmi $(docker images -q --filter "dangling=true"); }
#function drmiuntagged { docker rmi $(docker images | grep "^<none>" | awk '{print $3}'); }
