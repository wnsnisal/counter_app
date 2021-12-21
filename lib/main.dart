import 'screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/counter_page.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => App(),
      ),
      //App()
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true, // Set to true
      locale: DevicePreview.locale(context), // Add the locale here
      title: "Counter App",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/counter_page': (context) => CounterPage(),
      },
    );
  }
}
