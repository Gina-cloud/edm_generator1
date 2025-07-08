#!/bin/bash

echo "AI 기반 e-DM Generator 설치 시작..."
echo

# Python 설치 확인
if ! command -v python3 &> /dev/null; then
    echo "Python3이 설치되지 않았습니다. Python 3.8 이상을 설치해주세요."
    exit 1
fi

echo "Python3이 설치되어 있습니다."

# 가상환경 생성
if [ ! -d "venv" ]; then
    echo "가상환경을 생성합니다..."
    python3 -m venv venv
    echo "가상환경이 생성되었습니다."
else
    echo "가상환경이 이미 존재합니다."
fi

# 가상환경 활성화
source venv/bin/activate

# 패키지 설치
echo "필요한 패키지를 설치합니다..."
pip install --upgrade pip
pip install -r requirements.txt

# 환경변수 파일 생성
if [ ! -f ".env" ]; then
    if [ -f ".env.example" ]; then
        cp .env.example .env
        echo ".env 파일이 생성되었습니다. OpenAI API 키를 설정해주세요."
    fi
fi

echo
echo "설치가 완료되었습니다!"
echo ".env 파일에서 OpenAI API 키를 설정한 후 ./run_app.sh를 실행해주세요."
echo
