import 'package:flutter/material.dart';
import 'package:indexed_stack/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'IndexedStack';

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IndexedStack(
              index: i,
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 250.0,
                  color: Color(0xFFC41A3B),
                  child: Center(
                    child: Text(
                      'The',
                      style: TextStyle(
                        color: Color(0xFFFBE0E6),
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250.0,
                  width: 250.0,
                  color: Color(0xFFFBE0E6),
                  child: Center(
                    child: Text(
                      'Tech',
                      style: TextStyle(
                        color: Color(0xFFC41A3B),
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250.0,
                  width: 250.0,
                  color: Color(0xFF1B1F32),
                  child: Center(
                    child: Text(
                      'Designer',
                      style: TextStyle(
                        color: Color(0xFFFBE0E6),
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                ),
                Image(
                  image: AssetImage(logo),
                  height: 250.0,
                  width: 250.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              width: 250.0,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    if (i < 3) {
                      i++;
                    }
                    else {
                      i = 0;
                    }
                  });
                },
                padding: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                color: Color(0xFFC41A3B),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Color(0xFFFBE0E6),
                    fontSize: 24.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
