


import 'package:flutter/foundation.dart';

class TasksData extends ChangeNotifier {
  List<Tasks> changeList = [
   Tasks(name: 'take a cup of tea'),
    Tasks(name: 'take a cup of tea'),
    Tasks(name: 'take a cup of tea'),
    Tasks(name:'take a cup of tea'),
  ];

  void changeString(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    changeList.add(task);
    notifyListeners();
  }
  void updateTask(Tasks task){
    task.toggleCheckBox();
    notifyListeners();

  }
  void deleteTask(Tasks task){
    changeList.remove(task);
    notifyListeners();
  }

}
class Tasks{

  final String name;
  bool isDone ;
  Tasks({this.isDone = false ,required this.name });
  void toggleCheckBox(){
    isDone = !isDone;

  }



}