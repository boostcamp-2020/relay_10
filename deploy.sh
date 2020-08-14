#! /bin/bash

PROJECT_DIR=/home/relay/relay/deploy/relay_10
APP_NAME=app.js

echo "...RELAY 10 프로젝트를 시작합니다"

echo "...프로젝트 폴더로 이동 : $PROJECT_DIR"

cd $PROJECT_DIR

echo "...git pull로 최신 버전 설치"

git pull

echo "...NPM 패키지 설치"

npm install .

echo "...현재 $APP_NAME 으로 실행 중인 PID 확인"

CURRENT_PID=$(pgrep -f ${APP_NAME})

echo "...현재 실행 중인 PID : $CURRENT_PID"

if [ -z "$CURRENT_PID" ] ; then
	echo "...실행 중인 PID 없으므로 프로그램 실행!"

else
	echo "...kill -15 $CURRENT_PID"
	kill -15 $CURRENT_PID
	sleep 5
fi

echo "...nohup 으로 $APP_NAME 실행!"

nohup node $APP_NAME 2>&1 &