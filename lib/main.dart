import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter大学'),
      ),
      body: Container(
        width: double.infinity,
        /*
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info),
              title: Text('お問い合わせ'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                // TODO: 画面遷移
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage('next page!!')),
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
        */
        /*
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
        */
        /*
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
        */
        /*
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                        'https://picsum.photos/250?image=9'
                    ),
                ),
                Text('Item $index'),
              ],

            );
          }),
        ),
        */
        /* */
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            Column(
              //width: 160.0,
              //color: Colors.red,
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://picsum.photos/250?image=9'
                  ),
                ),
                Text('Item'),
              ],
            ),

            Container(
              width: 160.0,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.orange,
            ),
          ],
        ),
        /* */
      ),
    );
  }
}
