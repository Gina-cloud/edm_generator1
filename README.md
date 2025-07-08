# 📧 AI 기반 e-DM Generator (최종 제출 버전)

AI를 활용한 전문 마케팅 이메일(EDM) 제작 도구 - 최종 개선 버전

## 🚀 주요 개선사항 (2025.07.08)

### ✅ **UI/UX 개선**
- 불필요한 도움말 텍스트 제거로 깔끔한 인터페이스
- 애플리케이션 제목 간소화: "AI 기반 e-DM Generator"
- 직관적인 단계별 진행 방식

### ✅ **배경 이미지 생성 AI 학습 개선**
- **Few-Shot Learning 방식** 도입으로 배경 효과별 정확도 향상
- **품질 검증 시스템** (3회 재시도 + 70% 품질 점수)
- **배경 효과별 전문 프롬프트** (그라데이션, 반짝이, 빛망울, 곡선, 추상)
- **실시간 미리보기** 기능으로 사용자 경험 개선

### ✅ **로고 선택 시스템 고도화**
- **실제 배경 명도 분석** 기반 로고 선택
- **업로드 이미지 픽셀 분석** (PIL + numpy)
- **AI 생성 SVG 색상 분석** (정규식 기반)
- **3단계 분석**: 업로드 이미지 → SVG 분석 → 테마 컬러
- **실시간 로고 선택 미리보기**

### ✅ **초청형 EDM 안정성 강화**
- **변수 스코프 문제** 해결
- **필수 필드 검증** 추가
- **디버깅 시스템** 구축

### ✅ **오류 처리 개선**
- **TypeError 방지**: 안전한 데이터 접근 방식
- **session_state 초기화** 강화
- **예외 처리** 전면 개선

## 🎯 주요 기능

### 📝 EDM 유형
- **초청형**: 행사/세미나 초대 EDM (날짜: 2025.07.07, 장소: 문봉교실)
- **소개형**: 제품/서비스 소개 EDM

### 🤖 AI 기반 콘텐츠 생성
- 핵심 메시지 기반 자동 문구 생성
- 웹페이지 URL 및 파일 자료 분석 (PDF, PPTX, DOCX, 이미지)
- Bootstrap Icons 기반 시각적 기능 표현
- 다국어 번역 지원 (영어, 일본어, 중국어, 스페인어, 프랑스어, 말레이시아어)

### 🎨 고도화된 디자인 시스템
- **AI 학습 개선된 배경 생성**: 효과별 전문 프롬프트 + 품질 검증
- **지능형 로고 선택**: 실제 배경 명도 분석 기반
- **실시간 미리보기**: 배경 효과 및 로고 선택 결과 즉시 확인
- **반응형 디자인**: 데스크톱/태블릿/모바일 최적화

### 🔧 개발자 도구
- **디버그 모드**: 로고 선택 및 배경 분석 상세 정보
- **성능 모니터링**: SVG 생성 과정 로깅
- **오류 추적**: 상세한 예외 처리 및 복구

## 🛠️ 설치 및 실행

### 1. 환경 설정
```bash
# 가상환경 생성 및 활성화
python -m venv venv
source venv/bin/activate  # Linux/Mac
# 또는 venv\Scripts\activate  # Windows

# 패키지 설치
pip install -r requirements.txt
```

### 2. API 키 설정
```bash
# 환경변수 파일 생성
cp .env.example .env

# .env 파일 편집
OPENAI_API_KEY=your_openai_api_key_here
```

### 3. 애플리케이션 실행
```bash
streamlit run app.py
```

## 📋 사용 방법

### 1단계: EDM 기본 설정
- EDM 유형 선택 (초청형/소개형)
- 핵심 메시지 입력 (필수)
- 타겟 고객 설정

### 2단계: 솔루션 소개 자료
- 웹페이지 URL 분석
- 파일 업로드 및 AI 분석
- 종합 자료 요약

### 3단계: 세부 정보 입력
**초청형**: 초청의 글(필수), 행사 정보, 세션 일정
**소개형**: 제품 설명(필수), 주요 기능, 기대효과

### 4단계: 디자인 설정
- 메인 컬러 선택
- **개선된 배경 효과**: 그라데이션, 반짝이, 빛망울, 곡선, 추상
- **실시간 미리보기** 확인

### 5단계: 로고 업로드
- 회사 로고 (밝은/어두운 배경용)
- 파트너 로고 (선택사항)
- **지능형 로고 선택 미리보기**

### 6단계: Footer 설정
- 회사명, 주소, 연락처, 웹사이트 (오른쪽 정렬)

## 🌍 다국어 지원

생성된 EDM을 다음 언어로 번역 가능:
- English (영어)
- 日本語 (일본어)
- 中文 (중국어)
- Español (스페인어)
- Français (프랑스어)
- Bahasa Malaysia (말레이시아어)

## ⚙️ AI 수정 기능

생성된 EDM을 자연어로 수정 요청:
- "제목을 더 임팩트 있게 바꿔주세요"
- "본문을 더 간결하게 만들어주세요"
- "CTA 버튼 텍스트를 더 매력적으로 수정해주세요"

## 🔧 기술 스택

### Frontend
- **Streamlit**: 웹 애플리케이션 프레임워크
- **Bootstrap Icons**: 아이콘 시스템
- **반응형 CSS**: 모바일 최적화

### AI & 분석
- **OpenAI GPT-4**: 콘텐츠 생성 및 번역
- **Few-Shot Learning**: 배경 효과별 전문 프롬프트
- **품질 검증 시스템**: 3회 재시도 + 점수 기반 평가

### 이미지 처리
- **PIL (Pillow)**: 이미지 로드 및 처리
- **numpy**: 픽셀 단위 명도 분석
- **pytesseract**: OCR 텍스트 인식
- **base64**: 이미지 인코딩

### 문서 처리
- **PyPDF2**: PDF 텍스트 추출
- **python-pptx**: PowerPoint 처리
- **python-docx**: Word 문서 처리
- **BeautifulSoup4**: 웹 스크래핑

## 📁 프로젝트 구조

```
250708_submit/
├── app.py                 # 메인 애플리케이션 (최종 개선 버전)
├── requirements.txt       # 패키지 의존성
├── .env.example          # 환경변수 예시
├── .streamlit/           # Streamlit 설정
├── images/               # 업로드된 이미지 저장
└── README.md            # 프로젝트 문서 (이 파일)
```

## 🎯 핵심 개선 포인트

### 1. AI 학습 개선
```python
# 배경 효과별 전문 프롬프트 템플릿
effect_templates = {
    "gradient": {"description": "smooth linear and radial gradients...", ...},
    "sparkles": {"description": "small sparkling star-like elements...", ...},
    "bokeh": {"description": "soft, blurred circular light effects...", ...}
}
```

### 2. 지능형 로고 선택
```python
# 실제 배경 분석 기반 로고 선택
def select_logo_by_background_analysis():
    # 1순위: 업로드 이미지 픽셀 분석
    # 2순위: AI 생성 SVG 색상 분석
    # 3순위: 테마 컬러 기반 판단
```

### 3. 안전한 데이터 처리
```python
# TypeError 방지
current_data = st.session_state.features_data[i] or default_data
value = current_data.get('key', default_value)
```

## 🚀 성능 최적화

- **이미지 리사이징**: 100x100 썸네일로 명도 분석 최적화
- **SVG 캐싱**: 생성된 SVG 재사용
- **점진적 로딩**: 단계별 콘텐츠 로드
- **오류 복구**: 실패 시 기본값 자동 적용

## 📞 문제 해결

### 일반적인 오류
1. **OpenAI API 오류**: API 키 확인, 사용량 한도 확인
2. **파일 업로드 오류**: 지원 형식 확인 (PDF, PPTX, DOCX, JPG, PNG)
3. **번역 오류**: 인터넷 연결 및 API 상태 확인

### 디버깅 모드
사이드바에서 "디버그 모드"를 활성화하면 상세한 분석 정보를 확인할 수 있습니다.

---

**최종 제출일**: 2025년 7월 8일  
**버전**: Submit Release  
**주요 개선**: AI 학습 고도화, 로고 선택 지능화, 안정성 강화
