import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:disenos/screens/basic_design.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(), 
      },
    );
  }
}
