@echo off
echo AI 기반 e-DM Generator 설치 시작...
echo.

REM Python 설치 확인
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python이 설치되지 않았습니다. Python 3.8 이상을 설치해주세요.
    pause
    exit /b 1
)

echo Python이 설치되어 있습니다.

REM 가상환경 생성
if not exist venv (
    echo 가상환경을 생성합니다...
    python -m venv venv
    echo 가상환경이 생성되었습니다.
) else (
    echo 가상환경이 이미 존재합니다.
)

REM 가상환경 활성화
call venv\Scripts\activate.bat

REM 패키지 설치
echo 필요한 패키지를 설치합니다...
pip install --upgrade pip
pip install -r requirements.txt

REM 환경변수 파일 생성
if not exist .env (
    if exist .env.example (
        copy .env.example .env
        echo .env 파일이 생성되었습니다. OpenAI API 키를 설정해주세요.
    )
)

echo.
echo 설치가 완료되었습니다!
echo .env 파일에서 OpenAI API 키를 설정한 후 run_app.bat을 실행해주세요.
echo.
pause
