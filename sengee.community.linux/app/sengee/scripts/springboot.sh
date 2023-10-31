#!/bin/sh

export DIR=`dirname $0`
. $DIR/functions
. $DIR/config

APP_NAME=$1
APP_BASE_DIR=${BASE_DIR}/app/${APP_NAME}
APP_LOG_DIR=${BASE_LOG_DIR}/${APP_NAME}
APP_LOG_FILE=${APP_LOG_DIR}/sys.log
MAIN_CLASS=$2
LOG_TYPE=$4
check_dir_exist ${APP_BASE_DIR}

function getpid {
    pid=`ps -ef | grep java | grep "$MAIN_CLASS" | awk '{print $2}'`
    echo $pid
}

function restart {
    stop;
    sleep 4
    start;
}

function start {
    pid=`getpid`
    if [ "$pid" != "" ];then
        echo "$APP_NAME has been started,pid:$pid,please stop is first!" 
        return 1;
    fi
    cd ${APP_BASE_DIR}
    CP=./config
    for line in `cat ./config/lib.txt`;
    do
        CP=$CP:./lib/$line
    done
#    CP=./config
#    for f in `ls ./lib/*.jar`;
#    do
#        CP=$CP:$f
#        echo $f
#    done
    [ ! -d  ${APP_LOG_DIR} ] && mkdir -p ${APP_LOG_DIR}
    JAVA_OPTS="-Xms1G -Xmx2G -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${APP_LOG_DIR} -Dfile.encoding=UTF-8  $JAVA_OPTS"
    nohup java ${JAVA_OPTS}  -Dconsole.log.level=ERROR \
         -DAPP_NAME=${APP_NAME} -DAPP_LOG_DIR=${APP_LOG_DIR}  -cp $CP  \
         $MAIN_CLASS  1>> ${APP_LOG_FILE} 2>> ${APP_LOG_FILE}  &
         #$MAIN_CLASS  1>> ${APP_LOG_DIR}/stdout.log 2>> ${APP_LOG_DIR}/stderr.log &
    if [ "$LOG_TYPE" == "log" ];then
        log;
    fi
}

function stop22 {
    pid=`getpid`
    if [ -n "$pid" ]; then
        pids="$pid `getpids $pid | xargs`";
        [ -n "$pids" ] && kill -9  $pids
    fi
}


function stop {
    pid=`getpid`
    [ "$pid" == "" ] && return  
    kill -9 $pid
    sleep 1
    pids=`pidof chromedriver google-chrome  chrome`
    for f in $pids; do
        p=`getParentPid $f`;
        if [ "$p" == "1" ];then
            kill $f;
        fi
    done
}



function status {
    pid=`getpid`
    [ -n "$pid" ] && echo "${APP_NAME} is running,pid:${pid} " && exit
    echo "${APP_NAME} is not running..."
}

function log {
    FILE=${APP_LOG_FILE}
    if [ "$LOG_TYPE" == "stdout" ]; then
        FILE=${APP_LOG_DIR}/stdout.log  
    elif [ "$LOG_TYPE" == "stderr" ]; then
        FILE=${APP_LOG_DIR}/stderr.log  
    fi    
    tail -f ${FILE}  -n 500
}

case "$3" in 
    "restart")
       restart; 
        ;;  
    "start")
        start; 
        ;;
    "stop")
        stop;
        ;;
    "log")
        log;
        ;;
    "status")
        status;
        ;;
    *)
       exit
esac
