import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Counter App"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Center(
              child: Text(
                "Welcome to counter App!",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // background
              onPrimary: Colors.white, // foreground
              padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/counter_page');
            },
            child: Text(
              'GO',
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
