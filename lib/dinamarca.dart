import 'package:flutter/material.dart';
import 'ucrania.dart';

void main() {
  runApp(Dinamarca());
}

class Dinamarca extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              height: 75,
              width: 411,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 1.0, top: 10, right: 350, bottom: 1),
                child: TextButton(
                  // splashColor: Colors.black12,
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dinamarca(),
                      ),
                    );
                  },
                  child: Icon(Icons.undo),
                ),
              ),
            ),
          ),
          Text(
            'Dinamarca',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w300,
              fontSize: 35,
              height: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 6, right: 3,),
                child: SizedBox(
                  height: 280,
                  width: 500,
                  child: Container(
                    color: Color.fromRGBO(208, 12, 50, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 280,
                width: 358,            
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 105, left: 5, right: 3),
                 child: SizedBox(
                   height: 45,
                   width: 405,
                   child: Container(
                     color: Color.fromARGB(255, 255, 255, 255),
                   ),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: SizedBox(
                  height: 280,
                  width: 50,
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              /* Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 100, bottom: 10, top: 110),
                child: Image.asset(
                  'assets/images/portugal.png',
                  height: 100,
                  width: 100,
                ),
              ), */
            ],
          )
        ],
      ),
      bottomSheet: SizedBox(
        child: TextButton(
          child: Row(
            children: <Widget>[
              Text(
                "Próxima",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 18, 18),
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Ucrania(),
              ),
            );
          },
        ),
      ),
    );
  }
}