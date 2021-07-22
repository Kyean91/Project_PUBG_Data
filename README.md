# Project_PUBG_Data
- 데이터 출처 : https://www.kaggle.com/skihikingkevin/pubg-match-deaths
- 담당한 데이터 셋 : solo / duo / squad 중 squad 데이터 담당
---
## 날짜별 진행 현황
### 7월 21일
- 예정
1. 프로젝트 관련 컨설팅 받을 내용 정리
2. SQL 데이터 Import 하기
3. Python으로 SQL 쿼리 작성해 Squad 데이터 병합하여 불러오기(시간이 된다면)
- 결과
1. SQL 메모리 제한으로 인해 Import 되지 않은 데이터 확인 완료 (메모리 용량을 12GB로 제한)
2. Python으로 작성한 SQL 쿼리는 데이터가 정상적으로 Import 되었다면 병합 및 불러오기가 실행되는 것 확인 완료
3. 컨설팅 결과 : 클러스터링의 결과로 나온 클러스터를 새로운 Feature로 활용 가능, 클러스터링으로 나눈 클러스터내부를 다시 한번 클러스터링 가능, 통상적인 EDA보다 게임에 대한 배경지식을 활용한 EDA 해보기

### 7월 22일
- 예정
1. Python으로 데이터를 나눈 뒤 csv 파일로 저장하여 SQL로 Import가능 여부 확인 해보기
2. 1번이 안된다면 Python으로 데이터를 병합하는 방법 마련
3. 병합되어 불러와진 데이터의 Column별 분포를 확인하고 Outlier Check
4. heatmap 등의 방법으로 변수들 간의 상관 관계를 확인
