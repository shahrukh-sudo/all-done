import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/tasks_data.dart';
import 'Screens/taskscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> TasksData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}



