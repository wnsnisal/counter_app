import 'package:flutter/material.dart';
import '/screens/home_page.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, HomePage());
          },
        ),
        title: Text("Counter Page"),
      ),
      body: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  String displayCount = "00";

  void increment() {
    setState(() {
      count++;
      if (count < 10) {
        displayCount = '0$count';
      } else {
        displayCount = count.toString();
      }
    });
  }

  void discrement() {
    setState(() {
      if (count > 0) {
        count--;
        if (count < 10) {
          displayCount = '0$count';
        } else {
          displayCount = count.toString();
        }
      }
    });
  }

  void reset() {
    setState(() {
      count = 0;
      displayCount = '0$count';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 500.0,
            child: Center(
              child: Text(
                displayCount,
                style: TextStyle(
                  fontSize: 150.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: increment,
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.blueAccent,
                    size: 40.0,
                  ),
                  padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                ),
                IconButton(
                  onPressed: reset,
                  icon: Icon(
                    Icons.replay_circle_filled,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                ),
                IconButton(
                  onPressed: discrement,
                  icon: Icon(
                    Icons.do_disturb_on,
                    size: 40.0,
                    color: Colors.amber,
                  ),
                  padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
