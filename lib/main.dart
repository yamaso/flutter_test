import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _message;
  static var _janken = <String>['ぐー','ちょき','ぱー'];
  final controller = TextEditingController();

  @override
  void initState() {
    _message = 'ok';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Yamaso Test'),
      ),
      body:
      new Card(
        margin: EdgeInsets.all(25.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                    color: const Color(0xFFE6CF3E),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        _message,
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",

                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding (
                padding: EdgeInsets.all(25.0),
              ),

              new Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child:Container(
                    color: const Color(0xFFFCD451),
                    alignment: Alignment.center,
                    child:Padding(
                      padding: EdgeInsets.all(25.0),
                      child: TextField(
                        onChanged: textChanged,
                        controller: controller,
                        style: TextStyle(
                          fontSize: 28.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding (
                padding: EdgeInsets.all(25.0),
              ),

              new Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child:Container(
                    color: const Color(0x80E6AE3E),
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: IconButton(
                        icon: const Icon(Icons.android_sharp),
                        iconSize: 50.0,
                        color: const Color(0xFFFFFFFF),
                        onPressed: buttonPressed,
                      )
                    ),
                  ),
                ),
              ),

            ]

        ),
      ),
    );
  }
  void buttonPressed(){
    setState(() {
      _message = controller.text + (_janken..shuffle()).first;
    });
  }
  void textChanged(String val){
    setState(() {
      _message = val;
    });
  }
  void fabPressed() {}
}
