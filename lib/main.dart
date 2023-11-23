// package 가져오는 문법
import 'package:flutter/material.dart';

//앱 구동시켜주세요
void main() {
  //메인 페이지
  runApp(const MyApp());
}
// stless 탭 키 누르면 생성됐음
// 메인 페이지 정의 되어있음.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 여기다가 코드 짠다.
    // 플러터에서는 위젯을 짜깁기해서 디자인한다.
    // 글자 위젯, 이미지 위젯, 아이콘 위젯, 박스 위젯 4개를 배운다.
    // 커스터마이징 , 구글 디자인 -> MaterialApp
    // 아이폰 디자인은 cupertino s
    return MaterialApp(
      //1. 텍스트
      //home: Text("안녕")

      //2 .아이콘 (플러터 홈페이지에 아이콘 여러개 있다 찾아서 쓰면 됨)
      //home: Icon(Icons.star)

      //3 .이미지 위젯
      // 1.assets 폴더 안에 이미지 추가
      // 2. pubspec.yaml 파일 안에서

      //home: Image.asset("dog.jpeg")

      //4 네모박스 넣을땐 Container
      // 스타일링 값을 주는 것
      // 숫자의 단위는 LP이다. 50LP == 1.2cm
      // 크롬에서 어디서부터 50만큼 차지할지 안정해져숴 크게 나온거임
      //home: Container(width: 50,height: 50,color: Colors.blue)

      // 정중앙에서부터 50LP
      // home: Center(
      //   child: Container(width: 50, height: 50, color: Colors.blue),
      // )

      //scaffold 위젯은 상중하로 자동으로 나누어짐
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: Container(),
      //   bottomNavigationBar: BottomAppBar(child: Text("테스트"),)
      // )
      // home: Scaffold(
      //   // 여러 요소를 가로로 균일하게 배치하고 싶다
      //   body: Row(
      //     //display : flex 와 비슷
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // 가로 축 정렬
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //
      //     // 세로 축 정렬
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: const [
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //     ],
      //   ),
      // ),
      // home: Scaffold(
      //   // 여러 요소를 가로로 균일하게 배치하고 싶다
      //   body: Column(
      //     mainAxisAlignment:MainAxisAlignment.center,
      //     children: const [
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //     ],
      //   ),
      // ),

      // 숙제
      // home: Scaffold(
      //   appBar: AppBar(title: Text("앱임")),
      //   body: Text('안녕'),
      //   bottomNavigationBar: BottomAppBar(
      //     // 남용하지 말라고 린트가 쳐지는거
      //     //child: Container(
      //     // SizeBox는 width, height, child 만 필요하면 SizedBox를 쓰고 성능상 이점이 있다.
      //     child:SizedBox(
      //       height: 70,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Icon(Icons.phone),
      //           Icon(Icons.message),
      //           Icon(Icons.contact_page)
      //         ],
      //       ),
      //     ),
      //   )
      //   )


      // home: Scaffold(
      //   appBar: AppBar(title: Text("앱인")),
      //   // 가운데 정렬로 감쌌다.
      //   body: Center(
      //     // Center 자리에 Align으로 감싸고
      //     // allginment: Alignment.bottomCenter -> 하단중앙정렬과 같은 여러 옵션 추가 가능
      //     child: Container(
      //       width: 150, height: 50,
      //       // width:double.infinity 부모 박스 가로는 넘지않는 선에서 무한히 채워준다.
      //       // 이건 중복이라 에러가 난다. color: Colors.blue,
      //       // padding: EdgeInsets.all(20),
      //       // margin: EdgeInsets.fromLTRB(0, 30, 30, 0),
      //       // decoration: BoxDecoration(
      //       //   color: Colors.blue,
      //       //   border: Border.all(color: Colors.black)
      //       //     // borderRadius: 이런것도 가능
      //       // ),
      //       child: Text("안쪽 여백 확인"),
      //     ),
      //   ),
      // ),
      //home: Scaffold(
        // appBar: AppBar(leading: Icon(Icons.star),title:Text("텍스트다")),

        // appBar: AppBar(actions: [Icon(Icons.star),Icon(Icons.star)],),
        // body: SizedBox(
          // child: Text("안녕하세요",
          //   style: TextStyle(color: Colors.red,
          //       fontSize:50,
          //       background: Paint()..color=Colors.blue,
          //       letterSpacing: 10,
          //       fontWeight: FontWeight.w700
          //       // Color(0xff~ hex코드 집어 넣을 수 있음)
          //     //  Color.fromRGBO() RGB 넣을 수 있음.
          //   //색상, 폰트의 종류, 사이즈
          // ),
          // ),
          // child: TextButton(
          //   child: Text("글자"),onPressed: (){},

          // child: ElevatedButton(
          //   child: Text("글자"),onPressed: (){},
          //     style: ButtonStyle(),

        //   child: IconButton(
        //     icon: Icon(Icons.star),
        //     onPressed: (){},
        //   ),
        // ),
      //),

      // 레이아웃 혼자서도 잘짜는 법
      // 1. 예시디자인 준비 (피그마)
      // 2. 예시화면에 네모 그리기
      // 3. 바깥 네모부터 하나하나 위젯으로 (겉에서부터 안으로)
      // 4. 가로는 Row, 세로는 Column
      // 5. 마무리 디자인 (색상, 크기, 마진, 패딩, 정렬)

      // 6강
      // flexible, expanded
      // home: Scaffold(
      //   appBar: AppBar(
      //
      //   ),
        // body: Row(
        //   children: [
        //     // 전체 폭의 50퍼센트만 큼.
        //     // 부모의 몇퍼센트만큼 주려고 지정하려면 Flexible이라는 위젯으로 감싸면 된다.
        //     // Flexible(child: Container(color: Colors.blue,),flex: 3,), // 비율
        //     // Flexible(child: Container(color: Colors.green,),flex: 7,),
        //
        //     //3 등분
        //     // Flexible(child: Container(color: Colors.blue,),flex: 5,), // 비율
        //     // Flexible(child: Container(color: Colors.green,),flex: 5,),
        //     // Flexible(child: Container(color: Colors.red,),flex: 5,), // 비율
        //
        //     // Expanded
        //     // flex : 1을 가진 거랑 똑같음.
        //     Expanded(child: Container(color: Colors.blue,)), // 비율
        //     Flexible(child: Container(color: Colors.green,),flex: 5,),
        //   ],
        // ),

        // 당근 마켓

      // ),
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: Container(
      //     height: 150,
      //     padding: EdgeInsets.all(10),
      //     child: Row(
      //       children: [
      //         Image.asset('dog.jpeg',width: 150),
      //         Container(
      //           width: 300,
      //           child: Column(
      //             // x축 정렬 왼쪽 시작
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text("카메라 팝니다."),
      //               Text("아차산"),
      //               Text('7000원'),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(Icons.favorite),
      //                   Text("4")
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // 커스텀 위젯
      home: Scaffold(
        appBar: AppBar(),
        // 커스텀 위젯 쓰는 것
        //body: ShopItem(),
        // body: Column(
        //   children: [
        //     Text("안녕"),
        //     Text("안녕"),
        //     Text("안녕"),
        //     Text("안녕"),
        //   ],

        // LIstview는 스크롤이 자동으로 생김
        // 유저의 스크롤 위치를 기억할 수 있음.
        // 유저가 보고 있는곳을 기억해서 성능상 이점을 가져갈 수 있음.
        // 그래서 SNS, 쇼핑몰 상품 목록은 ListView라고 생각하면 된다.
        body: ListView(
        children: [
          Text("안녕"),Text("안녕"),Text("안녕"),
        ],
        ),
      ),
    );
  }
}

// 커스텀 위젯
// 문법 설명
// StatelessWidget라는 완성된 위젯을 ShopItem이라는 애한테 복사해준다.
// 단점 -> state관리가 힘들다.
// 재사용이 가능한 UI들, 큰 UI (페이지)는 커스텀 위젯으로 만들수 있다.
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  // override는 내꺼 먼저 적용해달라는 뜻
  // 중복된게 있으니까.!
  @override

  // build(context) -> js의 경우 function build(params) {} 라는 건데
  // dart에서는 build(params)로 한다.
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text("안녕"),
    );
  }
}

// 이렇게 변수에다가 축약 할 수 있음
// 근데 성능상 문제가 있을수도 있음
// 변수에다가 축약해야되는것은 평생 안바뀌는 것들만 축약해야 함
// 상단, 로고 이런것들
// 안에 데이터가 바뀐다 -> 성능상 문제가 생긴다.
var a = SizedBox(
  child: Text('안녕'),
);
