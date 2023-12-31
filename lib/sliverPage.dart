import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  @override
  State<SliverPage> createState() => _SliverPage();
}

class _SliverPage extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // 앱바의 높이를 설정
            expandedHeight: 150.0,
            // SliverAppBar 공간에 어떤 위젯을 만들지 설정
            flexibleSpace: FlexibleSpaceBar(
              title: Text('     Sliver Example'),
              background: Image.asset('repo/images/sunny.png'),
            ),
            backgroundColor: Colors.deepOrangeAccent,
          ),
        SliverList(
            delegate: SliverChildListDelegate([
          // 위젯 넣을 곳
              customCard('1'),
              customCard('2'),
              customCard('3'),
              customCard('4'),
        ])),
        SliverGrid(
          delegate: SliverChildListDelegate([
            // 위젯 넣을 곳
            customCard('1'),
            customCard('2'),
            customCard('3'),
            customCard('4'),
          ]),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        ],
      ),
    );
  }
  Widget customCard(String text) {
    return Card(
      child: Container(
        height: 120,
        child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 40),
            )),
      ),
    );
  }
}
