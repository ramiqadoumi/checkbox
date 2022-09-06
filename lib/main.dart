import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  double h1 = 0;
  double w1 = 0;
  double h2 = 0;
  double w2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Text(
              "Please selecet you Course!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 35),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text("based on dart programming",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.green[700])),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((val) {
                  setState(() {
                    flutterCourse = val!;
                    if (flutterCourse) {
                       h1 = 100;
                    w1 = 200; 
                    } else {
                      h1 = 0;
                    w1 = 0;
                    
                    }
                    
                  });
                })),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text(
                  "based on dart programming",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.green[700]),
                ),
                title: Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                
                onChanged: ((val) {
                  setState(() {
                    reactCourse = val!;
                     if (reactCourse) {
                      h2 = 100;
                    w2 = 200; 
                    } else {
                       h2 = 0;
                    w2 = 0;
                    
                    }
                  });
                })),
            Container(
              height: h1,
              width: w1,
              child: Image(
                  image: NetworkImage(
                      "data:image/png;base64,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")),
            ),
            Container(
              height: h2,
              width: w2,
              child: Image(
                  image: NetworkImage(
                      "data:image/png;base64,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")),
            )
          ],
        )),
      ),
    );
  }
}
