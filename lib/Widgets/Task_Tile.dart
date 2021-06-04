import 'package:flutter/material.dart';




class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function deleteTaskCallBack;

  TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallBack,required this.deleteTaskCallBack});
  @override
  Widget build(BuildContext context) {

    return ListTile(
      onLongPress: (){
        deleteTaskCallBack();
        },
      title: Text(
        '$taskTitle',


        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value){
          checkboxCallBack();
        },


      ),
    );
  }
}

// Checking(isDone: isDone,check: (bool checkBoxState){
// setState(() {
// isDone = checkBoxState;
// });
// },),
