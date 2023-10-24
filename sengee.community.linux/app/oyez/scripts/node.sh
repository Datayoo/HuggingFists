#!/bin/bash

export DIR=`dirname $0`
. $DIR/functions
. $DIR/config

export APP_NAME=$1
export APP_BASE_DIR=${BASE_DIR}/app/${APP_NAME}
export APP_LOG_DIR=${BASE_LOG_DIR}/${APP_NAME}
export APP_LOG_FILE=${APP_LOG_DIR}/sys.log

LOG_TYPE=$3

check_dir_exist ${APP_BASE_DIR}

MAIN_CLASS="org.datayoo.oyez.node.OyezNode"

if [ "$4" != "" ];then
  echo $4
  MAIN_CLASS="$4"
fi


function getpid {
    pid=`ps -ef | grep "$MAIN_CLASS" | grep "${APP_BASE_DIR} " | grep -v 'grep'  | awk '{print $2}'| xargs`
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
    [ ! -d  ${APP_LOG_DIR} ] && mkdir -p ${APP_LOG_DIR}
    NODE_HOME=${APP_BASE_DIR}
    cd $NODE_HOME

    CP=./conf
    for line in `cat ./conf/lib.txt`
    do
        CP=$CP:./lib/$line
    done

#    for f in `ls ./lib/*.jar`;
#    do
#        CP=$CP:$f
#    done
    for f in `ls ./ld/*`;
    do
        CP=$CP:$f
    done

    #CP="./resources:./lib/*"
    #-XX:MaxPermSize=256m
    JAVA_OPTS="-Xms2G -Xmx8G \
           -Djava.library.path=${BASE_DIR}/ld \
           -XX:+UseParNewGC  -XX:+UseConcMarkSweepGC \
           -XX:PretenureSizeThreshold=11457280  -XX:MaxTenuringThreshold=15 \
           -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${APP_LOG_DIR} -Dfile.encoding=UTF-8  $JAVA_OPTS"
    JAVA_OPTS="$JAVA_OPTS -Dwebdriver.chrome.driver=${BASE_DIR}/utils/drivers/chromedriver"

    nohup java $JAVA_OPTS -Dpwd=$NODE_HOME -DAPP_LOG_DIR=${APP_LOG_DIR} -cp $CP  ${MAIN_CLASS} \
           1>> ${APP_LOG_FILE} 2>> ${APP_LOG_FILE}  &
          #./resources/node.properties 1>> ${APP_LOG_DIR}/stdout.log 2>> ${APP_LOG_DIR}/stderr.log &
    if [ "$LOG_TYPE" == "log" ];then
        log;
    fi
}

function stop22 {
    pid=`getpid`
    #[ -n "$pid" ] && kill -9 $pid
    if [ -n "$pid" ]; then
        pids=`pstree -p $pid | head -n 1 | awk -F"[()]" '{for(i=1;i<NF-1;i++)if($i~/[0-9]+/)print $i}' | xargs`;
        [ -n "$pids" ] && kill -9 $pids
    fi
    #pid=`pidof chrome google-chrome chromedriver`
    #[ -n "$pid" ] && kill $pid
}

function stop2 {
    pid=`getpid`
    if [ -n "$pid" ]; then
        pids="$pid `getpids $pid | xargs`";
        [ -n "$pids" ] && kill -9  $pids
        #[ -n "$pids" ] && echo $pids
    fi
    pids=`pidof chrome google-chrome chrome-sandbox  chromedriver`
    for f in $pids; do
        if [ -f "/proc/$f/stat" ]; then
            p=`cat /proc/$f/stat | awk '{print $4}'`;
            if [ "$p" == "1" ];then
                kill $f;
                echo $f;
            fi
        fi
    done
}

function stop33 {
    pid=`getpid`
    [ "$pid" == "" ] && return
    pids=`getChildPids $pid`
    for p in $pids; do
        pp=`getChildPids $p`;
        [ -n "$pp" ] && kill -9 $pp;
    done
    [ -n "$pids" ] && kill -9 $pids
    #echo $pids
    [ -n "$pid" ] && kill -9 $pid
    #echo $pid
    pids=`pidof chrome google-chrome  chromedriver`
    for f in $pids; do
        p=`getParentPid $f`;
        if [ "$p" == "1" ];then
            kill $f;
        fi
    done
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


case "$2" in 
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

