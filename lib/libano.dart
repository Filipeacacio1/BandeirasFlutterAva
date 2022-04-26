import 'package:flutter/material.dart';
import 'dinamarca.dart';

void main() {
  runApp(Libano());
}

class Libano extends StatelessWidget {
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
            'Libano',
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
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 6),
                    child: SizedBox(
                      height: 280,
                      width: 399,
                      child: Container(
                        color: Color.fromRGBO(230, 27, 35, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 6),
                    child: SizedBox(
                      height: 180,
                      width: 399,
                      child: Container(
                        color: Color.fromRGBO(247, 247, 247, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 6),
                    child: SizedBox(
                      height: 90,
                      width: 399,
                      child: Container(
                        color: Color.fromRGBO(230, 27, 35, 1),
                      ),
                    ),
                  ),
                    Padding(
                 padding: const EdgeInsets.only(
                     right: 8.0, left: 130, bottom: 10, top: 95),
                 child: Image.asset(
                   'assets/images/libano.png',
                   height: 80,
                   width: 100,
                 ),
               ),
                   
                ],
              )
            ],
          ),

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
                builder: (context) => Libano(),
              ),
            );
          },
        ),
      ),
    );
  }
}