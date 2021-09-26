import 'package:flutter/cupertino.dart' show StatelessWidget;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextPage extends StatefulWidget {
  NextPage(this.name);
  final String name;
  @override
  State<NextPage> createState() => _NextPageState(name);
}

class _NextPageState extends State<NextPage> {
  _NextPageState(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: ElevatedButton(
                child: Text('戻る'),
                onPressed: () {
                  //画面遷移のコード
                  Navigator.pop(context,'Return Value2');
                },
              ),
            )
          ]
        ),
      ),
    );
  }
}