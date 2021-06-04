import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_it_out/Models/tasks_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build (BuildContext context) {
    String newTaskTitle = ' ' ;

    return SingleChildScrollView (
      padding: EdgeInsets.only ( bottom: MediaQuery
          .of ( context )
          .viewInsets
          .bottom ) ,
      child: Container (
        color: Color ( 0xff757575 ) ,
        child: Container (
          decoration: BoxDecoration (
            color: Colors.white ,
            borderRadius: BorderRadius.only (
                topLeft: Radius.circular ( 20 ) ,
                topRight: Radius.circular ( 20 ) ) ,
          ) ,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: [
              Text ( 'Add task' ,
                  textAlign: TextAlign.center ,
                  style: TextStyle (
                    fontSize: 30 ,
                    color: Colors.lightBlueAccent ,
                    fontWeight: FontWeight.w700 ,
                  ) ) ,
              Padding (
                padding: EdgeInsets.only ( left: 50 , right: 50 ) ,
                child: TextField ( textAlign: TextAlign.center ,
                  autofocus: true ,
                  onChanged: (value) {
                    newTaskTitle = value;
                  } ,
                  decoration: InputDecoration ( ) ,
                ) ,
              ) ,
              Padding (
                padding: EdgeInsets.only ( left: 50 , right: 50 ) ,
                child: MaterialButton (
                  color: Colors.lightBlueAccent ,
                  elevation: 5.0 ,
                  onPressed:(){

                    Provider.of<TasksData>(context,listen: false).changeString(newTaskTitle);
                    // listUpdateCallBack(text);
                    Navigator.pop(context);},

                  child: Text ( 'ADD' , style: TextStyle (
                      color: Colors.white
                  ) , ) ,
                ) ,
              )
            ] ,
          ) ,
        ) ,
      ) ,
    );
  }
}
