import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> boxImages = [
    'assets/골절.png',
    'assets/절단.png',
    'assets/심폐소생술.png',
    'assets/하임리히법.png',
    'assets/재난대피.png',
    'assets/기상재난.png',
  ];
  final List<String> boxText = [
    '골절시',
    '절단시',
    '심폐소생술',
    '하임리히법',
    '재난대피',
    '기상재난',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("안전하자!"),),
        body: Container(
          width: 1000,
          height: 1000,
          color: Colors.blue,
          child: Column(
            children: [
              Flexible(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: boxImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        int pageNumber = index + 1;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              switch (pageNumber) {
                                case 1:
                                  return Page1();
                                case 2:
                                  return Page2();
                                case 3:
                                  return Page3();
                                case 4:
                                  return Page4();
                                case 5:
                                  return Page5();
                                case 6:
                                  return Page6();
                                default:
                                  return Container();
                              }
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              boxImages[index],
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 200,
                                color: Colors.black.withOpacity(0.7),
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  boxText[index],
                                  style: const TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<String> images = [
    'assets/골절치료1.jpg',
    'assets/골절치료2.jpg',
    'assets/골절치료3.jpg',
    'assets/골절치료4.jpg',
    'assets/골절치료5.jpg',
  ];
  final List<String> texts = [
    '즉시 구급대에 연락하기. 개방골절은 감염의 위험이 높고 기타 심각한 신체적 외상을 야기할 가능성이 있다. 신속하게 치료를 받을수록 상처가 감염될 위험이 낮아진다.[1] 119에 전화하거나 응급처치를 시작하는 동안, 다른 사람에게 119에 전화를 하라고 시킨다.',
    '부상자에게 사고 경위 물어보기. 사고가 일어나는 것을 보지 못했다면 가급적 빨리 부상자에게 어떻게 된 일인지 물어본다. 응급처치에 필요한 물품을 모으고 구급대원을 기다리는 동안, 부상자에게 질문을 한다. 피를 얼마나 흘렸는지에 따라서, 부상자가 의식을 잃었다면 구조자가 구급대원들에게 사고 경위를 설명해야 한다. 구급대원들이 파악하고자 하는 정보는 다음과 같다.'
  '● 어쩌다가 뼈가 부러졌는가? 낙상인가, 교통사고인가, 구타를 당했는가, 스포츠 경기 중 다쳤는가?'
  '●사고 직후 상처가 어떤 모양이었는가? 상처가 계속 커지고 있는가?'
  '●피를 얼마나 흘렸는가?'
  '●쇼크에 대한 처치가 필요했는가?',
  '벌어진 상처의 위치와 뼈가 피부를 뚫고 나왔는지 파악하기. 상처에 손대지 말고 눈으로만 확인한다. 물체가 관통해서 벌어진 상처가 생겼거나 부러진 뼈의 날카로운 모서리에 피부가 찢기면서 상처가 생긴 경우에는 치료가 까다롭다. 상처의 정도는 다양하다. 뼈가 드러나지 않고 피부에 작게 난 상처도 있고 뼈가 상당히 드러나는 상처도 있다.'
  '뼈는 황백색을 띤다. 인체 모형에서 보듯 새하얀 색은 아니다. 코끼리 상아와 이빨 같이 아이보리 색이다.',
    '몸에 박힌 물체를 빼내지 않기. 물체가 동맥에 박혔을 수도 있다. 이런 경우에 물체를 빼내면 동맥에서 다량의 출혈이 발생해서 부상자가 빨리 피를 흘려 죽게 된다. 몸에 박힌 물체를 만지거나 움직이지 말고 그대로 둔 채 치료를 한다.[2]',
  '기타 생명을 위협하는 부상을 입었는지 확인하기. 상당한 힘이 가해져야 개방골절이 생기기 때문에 다른 목숨이 위험한 심각한 외상을 입을 가능성이 40-70%이다.[3] 상처에서 다량의 출혈이 발생한 것도 여기에 해당된다.'
  ];

  int imgNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("골절시 응급처치 요령",style: TextStyle(color: Colors.purple),)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum = (imgNum + 1) % images.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images[imgNum],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts[imgNum],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2>{
  final List<String> images2 = [
    'assets/절단치료1.jpg',
    'assets/절단치료2.jpg',
    'assets/절단치료3.jpg',
    'assets/절단치료4.jpg',
    'assets/절단치료5.jpg',
    'assets/절단치료6.jpg',
    'assets/절단치료7.jpg',
    'assets/절단치료8.jpg',
    'assets/절단치료9.jpg',
    'assets/절단치료10.jpg',
  ];
  final List<String> texts2 = [
    "장갑 끼기. 장갑을 빠르게 구할 수 있다면 장갑을 끼고 부상자를 돕는다. 장갑을 끼면 혈액을 매개로 한 질병에 걸리는 것을 막을 수 있다. 구급상자에 장갑이 들어있는 경우도 있다.[6]",
    '이물질 제거하기. 상처에 이물질이 붙어 있으면 흐르는 깨끗한 물로 씻어낸다. 싱크대가 없으면 물병으로 물을 붓는다. 하지만 이물질이 상처에 박혀 있거나 크기가 크면 그대로 놓아둔다.[7]',
    '지혈하기. 깨끗한 천이나 거즈로 상처 부위를 단단히 누른다. 단단히 눌러 지혈을 한다.[8]',
    '상처 부위 높이 올리기. 손가락이 절단된 손을 심장보다 위로 올린다. 이렇게 하면 출혈을 늦추는 데 도움이 된다',
    '손가락 닦기. 특히 손가락의 절단면이 지저분해 보일 경우, 이물질을 살살 씻어낸다.[14]상처를 압박하고 있는 경우에는 다른 사람에게 이 일을 맡긴다.',
    '장신구 빼기. 가능하다면 반지를 비롯한 장신구를 조심스럽게 빼낸다. 나중에 빼기 어려울 수 있기 때문이다',
    '물에 적신 페이퍼 타월이나 거즈로 손가락 감싸기. 깨끗한 페이퍼 타월을 살균된 생리 식염수에 살짝 적신다. 콘텍트 렌즈 소독에 사용하는 용액을 써도 된다. 생리 식염수가 없으면 수돗물이나 생수를 이용한다. 필요없는 물기를 짜낸다. 페이퍼 타월로 손가락을 감싼다.[16]',
    '손가락을 플라스틱 봉지, 가능하면 지퍼백에 담기. 페이퍼 타월로 감싼 손가락을 지퍼백에 담는다. 지퍼백을 봉한다',
  '얼음 주머니 또는 얼음통 준비하기. 더 큰 지퍼백이나 통에 얼음과 물을 담는다. 손가락이 담긴 지퍼백을 여기에 넣는다.[18]'
  '절단된 손가락을 그래도 물이나 얼음 속에 넣으면 안 된다. 동상을 입거나 피부가 손상될 수 있다. 그리고 드라이 아이스는 너무 차갑기 때문에 절대 사용하면 안 된다.',
    '손가락을 구급대원에게 건내기. 구급대가 도착하면 손가락을 건내준다'

  ];

  int imgNum2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("신체절단시 응급처치 요령",style: TextStyle(color: Colors.purple),)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum2 = (imgNum2 + 1) % images2.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images2[imgNum2],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts2[imgNum2],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3>{
  final List<String> images3 = [
    'assets/심폐소생술1.png',
    'assets/심폐소생술2.png',
    'assets/심폐소생술3.png',
    'assets/심폐소생술4.png',
    'assets/심폐소생술5.png',
    'assets/심폐소생술6.png',
    'assets/심폐소생술7.png',
  ];
  final List<String> texts3 = [
  '반응의 확인'
  '현장의 안전을 확인한 뒤에 환자에게 다가가 어깨를 가볍게 두드리며, 큰 목소리로 "여보세요, 괜찮으세요?" 라고 물어본다. 의식이 있다면 환자는 대답을 하거나 움직이거나 또는 신음 소리를 내는 것과 같은 반응을 나타낸다. 반응이 없다면 심정지의 가능성이 높다고 판단해야 한다.',
    '119신고환자의 반응이 없다면 즉시 큰 소리로 주변 사람에게 119 신고를 요청한다.'
  '주변에 아무도 없는 경우에는 직접 119에 신고한다. 만약 주위에 심장충격기(자동제세동기)가 비치되어 있다면 즉시 가져와 사용해야 한다.',
 ' 호흡 확인'
  '쓰러진 환자의 얼굴과 가슴을 10초 이내로 관찰하여 호흡이 있는지를 확인한다.'
  '환자의 호흡이 없거나 비정상적이라면 심정지가 발생한 것으로 판단한다.'
  '일반인은 비정상적인 호흡 상태를 정확히 평가하기 어렵기 때문에 응급 의료 전화상담원의 도움을 받는 것이 바람직하다.',
    '가슴압박 30회 시행'
  '환자를 바닥이 단단하고 평평한 곳에 등을 대고 눕힌 뒤에 가슴뼈(흉골)의 아래쪽 절반 부위에 깍지를 낀 두 손의 손바닥 뒤꿈치를 댄다.'
  '손가락이 가슴에 닿지 않도록 주의하면서, 양팔을 쭉 편 상태로 체중을 실어서 환자의 몸과 수직이 되도록 가슴을 압박하고, 압박된 가슴은 완전히 이완되도록 한다. 가슴 압박은 성인에서 분당 100~120회의 속도와 약 5cm 깊이(소아 4~5 cm)로 강하고 빠르게 시행한다.' '하나' '둘''셋' '...' '서른''하고 세어가면서 규칙적으로 시행하며, 압박된 가슴은 완전히 이완되도록 한다.',
    '인공호흡 2회 시행'
  '환자의 머리를 젖히고, 턱을 들어 올려 환자의 기도를 개방시킨다. 머리를 젖혔던 손의 엄지와 검지로 환자의 코를 잡아서 막고, 입을 크게 벌려 환자의 입을 완전히 막은 후 가슴이 올라올 정도로 1초에 걸쳐서 숨을 불어넣는다. 숨을 불어넣을 때에는 환자의 가슴이 부풀어 오르는지 눈으로 확인한다. 숨을 불어넣은 후에는 입을 떼고 코도 놓아주어서 공기가 배출되도록 한다. 인공호흡 방법을 모르거나, 꺼려지는 경우에는 인공호흡을 제외하고 지속적으로 가슴압박만을 시행한다.(가슴압박 소생술)',
  '가슴압박과 인공호흡의 반복'
  '이후에는 30회의 가슴압박과 2회의 인공호흡을 119 구급대원이 현장에 도착할 때까지 반복해서 시행한다.'
  '다른 구조자가 있는 경우에는 한 구조자는 가슴압박을 시행하고 다른 구조자는 인공호흡을 맡아서 시행하며, 심폐소생술 5주기(30:2 가슴압박과 인공호흡 5회)를 시행한 뒤에 서로 역할을 교대한다.',
  '회복자세'
  '가슴압박 소생술을 시행하던 중에 환자가 소리를 내거나 움직이면, 호흡도 회복되었는지 확인한다. 호흡이 회복되었다면, 환자를 옆으로 돌려 눕혀 기도(숨길)가 막히는 것을 예방한다.'
  '그 후 환자의 반응과 호흡을 관찰해야 한다. 환자의 반응과 정상적인 호흡이 없어진다면 심정지가 재발한 것이므로 신속히 가슴압박과 인공호흡을 다시 시작한다.'

  ];

  int imgNum3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("심폐소생술 요령",style: TextStyle(color: Colors.purple),)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum3 = (imgNum3 + 1) % images3.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images3[imgNum3],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts3[imgNum3],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<String> images4 = [
    'assets/하임리히법2.png',
    'assets/하임리히법3.png',
    'assets/하임리히법4.png',
  ];
  final List<String> texts4 = [
    '히임리히법이 필요한경우'
        '주의사항 : 하임리히법은 복부에 강한 압력을 주어 장기 손상을 유발할 수 있다. 따라서 기도의 이물을 빼내었다고 해도 반드시 병원을 방문하여 복부 장기 손상 여부를 확인하여야 한다. 기도폐쇄 증상이 없는 사람에게는 절대 시행하지 않는다.',
    '1. 상태체크 및 119신고 요청'
        '환자가 숨쉬기 힘들어 하거나 목을 감싸 괴로움을 호소할 경우 기도폐쇄로 판단하고 주변에 119에 신고를 요청한다.',
    '2. 하임리히법 실시 - 의식이 있는 경우'
        '환자의 등 뒤에 서서 주먹을 쥔 손의 엄지손가락 방향을 배 윗부분에 대고 다른 한 손을 위에 겹친 후 환자의 배꼽에서 명치 사이의 배 부위를 두 손으로 위로 쓸어올리듯 강하게 밀어 올려서 이물을 제거하고 이물이 밖으로 나왔는지 확인한다.'
        '* 임신한 여성이나 비만이 심한 사람의 경우 가슴부위를 밀어낸다.'
  ];

  int imgNum4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "하임리히법 요령",
          style: TextStyle(color: Colors.purple),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum4 = (imgNum4 + 1) % images4.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images4[imgNum4],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts4[imgNum4],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page4_2()),
                  );
                },
                child: Text('유아용하임리히법'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Page4_2 extends StatefulWidget {
  @override
  _Page4_2State createState() => _Page4_2State();
}

class _Page4_2State extends State<Page4_2> {
  final List<String> images4_2 = [
    'assets/하임리히법5.PNG',
    'assets/하임리히법6.PNG',
    'assets/하임리히법7.PNG',
    'assets/하임리히법8.PNG',
  ];
  final List<String> texts4_2 = [
  '1. 자세취하기 및 119 신고요청'
  '주변에 119 신고를 요청한다.'
  '환자의 얼굴이 우로 향하도록 환자를 자신의 팔위에 올려놓고 손으로는 환자의 머리와 경부가 고정되도록 잡는다.'
  '다음에는 다른 팔을 이용해 환자의 얼굴이 아래로 향하도록 뒤집어서(돌려서) 턱을 잡은 손이 환자를 떠받친다.',
  '2. 등 두드리기 5회'
  '영아의 머리를 가슴보다 낮게 하고, 영아를 안은 팔을 허벅지에 고정시킨 뒤 손바닥으로 영아의 어깨죽지 사이(견갑골)를 5회 두드린다.',
  '3. 흉부압박 5회'
  '영아의 등을 받치고, 머리를 가슴보다 낮게 하여, 영아를 안은 팔을 무릎 위에 놓는다.'
  '영아의 유두사이에 가상선을 긋고, 검지와 중지를 흉골에 올려놓고 (심폐소생술과 비슷하나 속도 는 조금 천천히 처치를) 분명하고 확실하게 5회의 압박을 시행 한다.'
  '(압박시 손가락은 가슴에서 떼지 않는다.)',
  '4. 입안의 이물질 제거'
  '영아의 구강내 이물질을 확인하여 제거한다.'
  '(손에 닿지 않은 이물질은 일부러 제거하지 않는다.)'
  '영아가 의식을 잃거나, 이물이 배출되거나, 힘차게 숨을 쉬거나, 기침을 할 때까지 계속 반복 실시한다. (119구급대원이 도착할 때까지 위의 과정을 반복 시행한다.)'
  ];

  int imgNum4_2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "영유아용 요령",
          style: TextStyle(color: Colors.purple),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum4_2 = (imgNum4_2 + 1) % images4_2.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images4_2[imgNum4_2],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts4_2[imgNum4_2],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page4()),
                  );
                },
                child: Text('성인용 하임리히법'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5>{
  final List<String> images5 = [
    'assets/재난대피1.jpg',
    'assets/재난대피2.jpg',
  ];
  final List<String> texts5 = [
  '인근 대피소 확인 하기'
  '상황이 발생할때는 신속히 인근 대피소로 이동해야하고.'
  '건물이나 아파트의 경우엔 대피할 때는 반드시 계단을 이용해야 합니다.'
 ' 많은 사람이 몰릴수도 있고 단전과 화재등의 위험이 존재합니다.',
  '비상식량은 30일분의 식량을 가지고 가는것을 추천하며'
  '쌀과 라면, 통조림 건조식량과 기타 취사도구를 챙겨야합니다.'
  '물은 어느정도 들고가는게 좋으며, 나머지필요한 물은 비상급수시설을 이용합니다'
  '휴대용 전등, 양초, 성냥, 라이터, 라디오, 기타등등의 용품도 함께 챙기면 좋습니다.'
  '  그리고 지병이 있는 경우엔 지병에 필요한 약품을 충분히 구비해 놓고, 각종 상비약을'
  ' 챙겨두는 것도 필요합니다.',

   ];

  int imgNum5 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("재난대피 행동요령",style: TextStyle(color: Colors.purple),)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum5 = (imgNum5 + 1) % images5.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images5[imgNum5],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts5[imgNum5],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6>{
  final List<String> images6 = [
    'assets/자연재난1.jpg',
    'assets/자연재난2.jpg',
    'assets/자연재난3.jpg',
    'assets/자연재난4.jpg',
  ];
  final List<String> texts6 = [
    '◆ 태풍·호우 예보 시 행동요령'
  '- TV, 라디오, 스마트폰으로 기상상황 파악하기 '
  '- 집 주변의 배수구 점검하는 등 재해위험요소 정비 '
 ' - 지하주차장과 하천에 주차된 자동차는 안전한 곳으로 옮기기',
  '◆ 산불 발생 시 행동요령'
  '- 산불 발견 시 ☎119, 산림청에 신고합니다.'
 ' - 초기의 작은 산불은 외투, 나뭇가지 등을 이용해 두드리거나 덮어서 불을 끕니다.'
  '- 산불 규모가 커지면 산불 발생 지역에서 멀리 떨어진 안전한 장소로 신속히 대피합니다.'
 ' - 대피하지 못한 경우, 바람을 등지고 낙엽이나 나뭇가지 등이 없는 움푹한 곳에서 낮은 자세로 엎드려 구조를 기다립니다.',
 ' ◆ 대설 행동요령'
  '- 평상시 TV, 라디오, 스마트폰 앱 ‘안전디딤돌’ 등을 통해 대설 기상상황 파악'
 ' - 대설 예보 시 대중교통 이용 및 눈 피해대비용 안전장구(체인, 모래주머니 등) 준비'
  '- 대설 특보 시 외출을 자제하고, 내집 앞, 보행로 및 지붕 등에 쌓인 눈을 치워 사고를 예방',
 ' ◆ 지진 발생 시 행동요령'
'  - 튼튼한 탁자 아래에 들어가 몸을 보호'
'  - 흔들림이 멈추면 가스/전기불 차단 후 문을 열어 출구 확보 및 신발을 신고 계단으로 이동'
'  - 건물이나 담장으로부터 떨어져 머리를 보호하며 낙하물이 없는 넓은 공간으로 이동(운동장, 공원)'
  ];

  int imgNum6 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("자연재난 행동요령",style: TextStyle(color: Colors.purple),)),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    imgNum6 = (imgNum6 + 1) % images6.length;
                  });
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Image.asset(
                    images6[imgNum6],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Text(
                texts6[imgNum6],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}