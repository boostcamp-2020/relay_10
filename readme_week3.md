# relay 10 - 아이 러브 스쿨 (i love school)

# 기능 B 구현

> 1. 프로필로 사용할 자신의 사진을 업로드한다.
2. 웹페이지의 웹캠 촬영 버튼을 눌러서 현재 자신의 모습을 촬영한다.
3. Azure Face API를 이용하여, 1과 2의 사진을 비교하여 유사도를 측정해서 본인을 확인한다(도용 방지를 위함).
 이때, 설정한 유사도 기준을 넘어야 업로드한 해당 사진이 프로필로 등록된다.
4. 사진을 추가적으로 등록할 때에도, i, ii, iii과 같은 과정을 거친다.

## 체크포인트

- [ ]  회원 가입 후 다음 페이지에서 웹캠 촬영 유무 확인
- [ ]  사진 업로드 및 웹캠을 이용한 사진 촬영
- [ ]  사진 간의 유사도 판별
- [ ]  local 이아닌 외부에서 접속 가능

참여자 : 김원호 박상신 위정훈 이민환 최영진 황선영 강근우 김대선 류찬규 전우민 정상우

[relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Zoom__2020-08-14_14-00-45.mp4](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Zoom__2020-08-14_14-00-45.mp4)

즐거운 업무 분담^ㅁ^🤣

## 회원가입 페이지

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/dsds.png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/dsds.png)

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled.png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled.png)

[http://101.101.216.200:8080/signup](http://101.101.216.200:8080/signup) 

 회원가입에 필요한 정보 입력받고 체크

- 아이디 입력 후 중복확인
- 비밀번호 2번 입력 후  같은지 확인
- 이름과 성별을 모두 입력하고 다음을 클릭

## 사진 업로드 페이지

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%201.png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%201.png)

[http://101.101.216.200:8080/signupnext](http://101.101.216.200:8080/signupnext)

 웹캠으로 받아온 사진과 input으로 넣어준 사진을 비교해서 유사도를 알려준다.

- 일치율 60% 이상 시 동일인으로 판정
- 회원가입 성공

## Azure Face Rest API를 이용한 사진 유사도 분석

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/image_(1).png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/image_(1).png)

출처 : J075 박상신

1. 우선 프로필로 입력받은 사진을 Detect API를 통해 FaceId를 생성합니다.
2. 이후 웹캠을 통해 입력받은 사진또한 Detect API를 통해 FaceId를 생성합니다.
3. 두 Face Id를 Body에 넣어 Find Similar API로 요청하면 얼굴 유사도 0~1 값이 반환됩니다. 이를통해 같은 사람인지 아닌지 판별 할 수 있습니다.

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%202.png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%202.png)

- Face - Detect 요청 / 결과

    해당 url 사진의 faceId를 리턴받았습니다.

![relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%203.png](relay%2010%20-%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%20%E1%84%85%E1%85%A5%E1%84%87%E1%85%B3%20%E1%84%89%E1%85%B3%E1%84%8F%E1%85%AE%E1%86%AF%20(i%20love%20school)%209ea3191b495449d8bfd7a8fd82a32e98/Untitled%203.png)

- Face - Find Similar 요청 / 결과

    결과 값으로 0.6070039의 유사도가 나왔음을 알 수 있습니다.

Face - Detect

[https://eastasia.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395236](https://eastasia.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395236)

Face - Find Similar

[https://eastasia.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395237](https://eastasia.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395237)

Azura Face API Guide

[https://azure.microsoft.com/ko-kr/services/cognitive-services/face/](https://azure.microsoft.com/ko-kr/services/cognitive-services/face/)

## 서버 업로드

[http://101.101.216.200:8080/](http://101.101.216.200:8080/)

## **배포**

### **네이버 클라우드 서버 생성**

- 2세대 Standard 서버

- 과금이 되는 서버지만, 10만원 쿠폰 과감히 사용함! ~~*어차피 일주일만 쓰니까..*~~

- Ubuntu 18.04

- 50GB SSD

- 2vCPU

- 8GB Mem

![image](https://user-images.githubusercontent.com/57997672/90230527-a2501d80-de54-11ea-858c-8e6ce0fcbd29.png)

포트 포워딩 설정

- 외부 접속용(`0.0.0.0/0`) : `8080`, `80`(http), `443`(https)
    - 추후 nginx 사용시 설정에서 8080 포트를 80/443 으로 변경해주면 됩니다

- 개발용(개발자 로컬IP) : `22`(ssh)

![image](https://user-images.githubusercontent.com/57997672/90231236-d37d1d80-de55-11ea-9e05-3ebe98e1e0e1.png)


Public IP 설정

- 클라이언트 접속 위한 IP

![image](https://user-images.githubusercontent.com/57997672/90231040-7da87580-de55-11ea-8f06-ea034497795e.png)

<br/>

---

### **VSCode Extension 활용하여 접속**

`Remote-SSH` extension 활용하면 GUI 환경에서 훨씬 편하게 작업 가능

- 윈도우에서도 SSH 설정만 잘해놓으면 PuTTY 대신 편하게 쓸 수 있음

![image](https://user-images.githubusercontent.com/57997672/90230896-391cda00-de55-11ea-93c1-6e4c1a727528.png)

- config 파일 설정 또는 확인

![image](https://user-images.githubusercontent.com/57997672/90230788-0bd02c00-de55-11ea-943b-bab664122cc3.png)

<br />

---

### **환경설정**

- 사용자 생성
- NVM 활용 NodeJS-NPM 설치
- git, curl, wget, nginx 설치

### **배포**

`git clone` 으로 파일 가져오기

```bash 
$ git clone https://github.com/boostcamp-2020/relay_10.git
```

`nohup` 으로 로그 파일 만들면서 실행

- `&` 옵션으로 백그라운드 실행

```bash 
$ nohup node app.js & 
```

## 소감 한마디

**김원호: 더 많은 사람과 생각을 나눌 수 있어서 좋았습니다 !**

**박상신 : 서버쪽 담당하면서 새로운 것 많이 배울 수 있었습니다!**

**위정훈 : 클라우드 배포 담당했는데, 쉘 명령어 몇개 말고는 코딩이 없어서 재미있었습니다 ㅋㅋ**

**이민환 : 개인 미션과 달리 널널하게 진행했지만 여러 분야 별로 많이 배울 수 있었습니다.**

**최영진 : 기존 프로젝트를 이어받아서 개발을 진행하는것이 신기한 경험이였습니다**

**황선영 : 팀원들이 어떻게 새로운 지식을 프로젝트에 접목하는 지를 보면서 배우는게 많았습니다.**

**강근우 : 새로운 프로젝트를 이어 받아 코드를 이해하면서 다른 사람의 코드를 볼 수 있어 좋았습니다!**

**김대선 : 뭘 모르는 지 알 수 있었던 좋은 기회인 것 같습니다.**

**류찬규 : 서버쪽에서 API 호출을 처음 사용해보면서 새로 배우는 것들이 많아 즐겁고 좋았습니다.**

**전우민 : 하나의 목표를 향해 여럿이서 나아간다는 점이 즐거웠습니다.**

**정상우 : 진행하며 모르는 것들을 많이 배웠고 즐겁게 할 수 있어서 좋았습니다.**