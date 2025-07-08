#!/bin/bash

echo "AI 기반 e-DM Generator 시작 중..."
echo

# 가상환경 활성화
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
    echo "가상환경이 활성화되었습니다."
else
    echo "가상환경을 찾을 수 없습니다. 먼저 setup.sh를 실행해주세요."
    exit 1
fi

# Streamlit 앱 실행
echo "Streamlit 앱을 시작합니다..."
streamlit run app.py --server.port 8501
