import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // double size = 300;
  double obicity = 1;
  String show = 'Show data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/7/73/Tree_Sparrow_Japan_Flip.jpg',height: 200,width: 300,),
          FlatButton(
            child: Text(show,style: TextStyle(color: Colors.blue),),
            onPressed: () {
              if (show == 'Show data' ) {
                show = 'Hide data';
                obicity = 1;
              } else {
                show = 'Show data';
                obicity = 0;
              }
              setState(() {});
            },
          ),

          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: obicity,
            child: Column(
              children: [Text("type:oyl"),
                Text("type:oyl"),
                Text("age:30"),
                Text("emp:45445")
              ],
            )
          ),
          // GestureDetector(
          //   onTap: (){
          //     setState(() {
          //       obc=0;
          //     });
          //   },
          // )
        ],
      ),
    );
  }
}
