import 'package:flutter/material.dart';
import 'libano.dart';
import 'dinamarca.dart';

void main() {
  runApp(Barbados());
}

class Barbados extends StatelessWidget {
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
            'Barbados',
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 6),
                child: SizedBox(
                  height: 280,
                  width: 120,
                  child: Container(
                    color: Color.fromRGBO(0, 37, 123, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, bottom: 6),
                child: SizedBox(
                  height: 280,
                  width: 100,
                  child: Container(
                    color: Color.fromARGB(255, 209, 169, 37),
                    child: Image.asset(
                      'assets/images/trident.png'
                )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, bottom: 6),
                child: SizedBox(
                  height: 280,
                  width: 125,
                  child: Container(
                    color: Color.fromRGBO(0, 37, 123, 1),
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(
                    right: 1.0, left: 150, bottom: 10, top: 110),
                child: Image.asset(
                  'assets/images/canada.png',
                  height: 400,
                  width: 100,
                ),
              ),*/
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
                builder: (context) => Libano(),
              ),
            );
          },
        ),
      ),
    );
  }
}