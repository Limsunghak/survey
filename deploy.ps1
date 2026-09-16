# 1회 실행: GitHub 공개 저장소 생성 + 푸시 + GitHub Pages 켜기
# 실행 위치: C:\CLAUDE\jaewon_work_docs\익명설문\site
gh repo create survey --public --source . --remote origin --push --description "익명 설문 화면(정적 HTML)"
gh api -X POST repos/Limsunghak/survey/pages -f build_type=legacy -f "source[branch]=main" -f "source[path]=/"
Write-Host "완료. 1~2분 뒤 https://limsunghak.github.io/survey/?s=claude-course-2026 확인"
