import 'package:flutter/cupertino.dart' show StatelessWidget;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextPage extends StatefulWidget {
  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Center(
          //child: RaisedButton(onPressed: () {  },
          child: ElevatedButton(
            child: const Text('戻る'),
            onPressed: (){
            //画面遷移のコード
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}