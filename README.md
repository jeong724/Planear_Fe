<p align="center">
<img width="141" alt="Frame 1707481632@2x" src="https://github.com/user-attachments/assets/763039ec-bfa2-4192-9a9e-bc13fd982a1a">
 </p>


아바타 생성 및 소셜라이징 기능을 적용한 일정 관리 앱 서비스입니다

Planear는 재밌는 일정 관리와 유익한 인간 관계를 실현하기 위한 서비스로, 20대 초반의 대학생을 타겟으로 일정 관리 및 목표 공유 기능을 제공합니다. 아바타를 매개로 친구와 목표 및 일정 달성률을 공유하며, 코인을 모아 아바타를 꾸미며 동기부여를 얻을 수 있습니다.

## 주요 기능 소개

### 일정의 먼슬리 위클리 조회 기능
![image](https://github.com/user-attachments/assets/625fda9f-1852-4e03-9829-35268249b80a)
사용자는 월간 및 주간 단위로 일정을 손쉽게 조회할 수 있습니다. 이를 통해 특정 기간 동안의 일정을 한눈에 파악하고, 중요한 일정을 빠뜨리지 않도록 관리할 수 있습니다.
### 일정 추가, 일정 상세 조회 및 수정 기능
![image](https://github.com/user-attachments/assets/fcf19725-f44d-4c8f-969f-95c525aa88e5)
새로운 일정을 추가하고 기존 일정을 상세히 조회할 수 있습니다. 또한, 일정 변경이 필요할 때는 쉽게 수정할 수 있는 기능을 제공합니다. 사용자는 이를 통해 자신의 일정을 더욱 유연하게 관리할 수 있습니다.
### 내 아바타 및 상태 메세지 조회 기능 | 내 아바타를 꾸미기 위한 아이템 조회 기능
![image](https://github.com/user-attachments/assets/aeaf46e7-7e1d-423a-862e-f36009cc3a86)
사용자는 자신의 아바타와 상태 메시지를 조회할 수 있으며, 이를 통해 친구들과 현재 상태를 쉽게 공유할 수 있습니다. 또한, 아바타를 꾸미기 위한 다양한 아이템을 조회하고 구매하여, 아바타를 꾸미는 재미를 느낄 수 있습니다.
### 상태 메세지 설정
![image](https://github.com/user-attachments/assets/bca71d72-9240-4d77-ac4a-6879a81c304e)
사용자는 자신의 상태 메시지를 설정하여 현재 기분이나 상태를 표현할 수 있습니다. 이를 통해 친구들과 더 쉽게 소통하고 목표 달성을 공유할 수 있는 환경을 제공합니다.
### 친구 추가 | 소셜 메뉴 화면
![image](https://github.com/user-attachments/assets/fa7ea4b4-f7fd-4008-b994-9d747d493ba8)
친구를 추가하고 소셜 메뉴를 통해 서로의 목표와 일정을 공유할 수 있습니다. 이를 통해 친구들과의 일정과 목표를 연동하고, 함께 성취감을 느낄 수 있습니다.

## 기술스택
- **Frontend**: Flutter
- **Language**: dart 
- **state management**: Riverpod

## 그 외에도 이런 것들을 고민했어요

<details>
<summary>UT 결과 알아보기</summary>

서비스 기획을 위한 기본적인 정보를 수집하기 위해 타겟 고객인 대학생 30명을 대상으로 설문조사를 실시하였습니다. 그
결과, 타겟 고객의 Pain points를 검증하는데 성공하였으며, 서비스의 세부적인 기능 기획의 방향성을 파악할 수 있었습니 다. 먼저 약 68.6%의 대학생이 본인의 일정 관리 습관에 대해 개선이 필요하다고 느꼈으며, 그 중 10%는 할 일을 실천하고 관리하는 데 어려움을 겪고 있었습니다.

또한, 내 또래 대학생들이 어떤 목표를 가지고 있는지 궁금했던 적이 있느냐는 질문에 48.3%가 그렇다고, 24.1%가 매우 그렇다고 답변한 반면, 목표와 관련한 대화를 자주 나누냐는 질문에는 41.4%가 보통이라고, 17.2%가 그렇지 않다고 답해, 목표와 관련한 또래 소통에 대한 강한 니즈를 가지고 있는데 반해 수동적인 소통 태도를 보였습니다.

목표와 관련한 대화를 자주 나누지 않는 이유로는 32%가 ‘진지하고 무거운 대화 주제로 분위기가 가라앉을까봐’를, 32% 가 ‘민감하고 사적인 질문이라 생각해서’를 택했습니다. 이 점을 참고하여, 사용자가 거부감 없이 소통할 수 있는 환경을 조 성하기 위해 서비스 내에서 사용자가 상태 메시지에 띄울 문구를 선택할 수 있도록 기획하였습니다. 이를 통해 공유하기 불 편한 부분과 그렇지 않은 부분이 사용자의 선택에 의해 구분될 수 있도록 했습니다.
</details>

<details>
<summary>타 서비스 분석 알아보기</summary>

타 서비스 분석

구글 캘린더나 노션의 경우에는 일정을 관리하는 기능이 너무 많거나 복잡해 어려움을 호소하는 사용자가 있었습니다. 이 를 고려하여 플래니어에서는 일정 관리에 필요한 필수 기능만을 도입해 쉬운 일정관리가 가능하도록 했습니다

귀여운 3D 캐릭터 디자인과 함께 메타버스 속 공간을 꾸미는 기능과, 일상 소통 기능을 제공하는 서비스 ‘본디’의 경우, 사 용자가 자발적으로 SNS상에서 캐릭터를 공유하면서 빠르게 대량의 사용자를 모을 수 있었습니다. 플래니어는 이를 벤치마 크하여 1020세대 사용자의 이목을 끌만한 SNS 공유 템플릿을 함께 기획했습니다.

‘찰리’는 도넛을 모아 아이템을 구매하는 시스템과 픽셀 아트 느낌의 독특한 컨셉으로 애착 사용자를 모으는데 성공한 만보 기 앱 서비스입니다. 이 중에서 픽셀 형식의 캐릭터 디자인이 아바타 꾸미기 기능을 제공하는 다른 서비스에 비하여 개발 및 디자인에 드는 리소스가 적다고 판단해 이를 벤치마크하여 플래니어에 적용하고자 했습니다.
</details>

<details>
<summary>마케팅을 한다면?</summary>

서비스 내에서 ‘친구 추가’에 대한 리워드를 제공 : 서비스 내에서 '친구 추가'라는 사용자의 행동에 대하여 친구를 추가할 때마다 보상을 제공함으로써 사용자들이 더 많은 친구를 초대하고 함께 목표를 공유하도록 설계했습니다.

타겟의 이목을 끄는 SNS 공유 템플릿을 활용 : 타겟 고객인 대학생들의 이목을 끌기 위해 매력적인 SNS 공유 템플릿을 활 용하여 사용자들이 자발적으로 아바타를 공유하고, 이를 통해 자연스럽게 Planear를 홍보할 수 있도록 합니다.

20대 초반의 자기계발, 일정 관리 주제의 커뮤니티에 접근 : 자기계발 및 일정 관리에 관심이 많은 타겟 사용자에게 접근 하기 위해서는 20대 초반의 구독자를 보유하고 있으면서, 해당 주제를 주요 컨텐츠로 삼는 인플루언서와 컨택하거나, 대 학생 커뮤니티 서비스인 에브리타임, 또는 관련 주제의 다른 20대 커뮤니티에서 플래니어가 자연스럽게 언급될 수 있도록 접근해야 합니다.

브랜드 SNS 운영 : 플래니어에 대해 궁금해하는 사람들이 서비스에 대해 파악할 수 있도록 하기 위해, 플래니어의 핵심 컨 셉이 반영된 SNS 계정을 운영하고, 주요 기능과 서비스 활용 예시, 업데이트 소식과 이벤트 소식을 알리는 콘텐츠를 게시 해야 합니다.
</details>

## Planear 브로슈어
<details>
<summary>플래니어 브로슈어</summary>

<img width="444" alt="image" src="https://github.com/user-attachments/assets/5a6a3649-5fdd-4513-98d9-e2cfa61491d7">

<img width="444" alt="image" src="https://github.com/user-attachments/assets/080de03a-5897-48e2-98ba-48d4ef93da05">

<img width="445" alt="image" src="https://github.com/user-attachments/assets/1f633366-d81a-4532-8445-b806c20144d5">

</details>
