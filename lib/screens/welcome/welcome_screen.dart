import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color myColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.green,
        title: Text("Our first project"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  setState(() {
                    if (myColor == Colors.red) {
                      myColor = Colors.blue;
                    } else if (myColor == Colors.blue) {
                      myColor = Colors.green;
                    } else {
                      myColor = Colors.red;
                    }
                  });
                },
                child: Text(
                  "Change Color",
                  style: TextStyle(color: Colors.white),
                )),
            Container(height: 200, width: 200, color: myColor)
          ],
        ),
      ),
    );
  }
}
