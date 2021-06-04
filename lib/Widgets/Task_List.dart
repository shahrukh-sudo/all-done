import 'package:flutter/material.dart';

import 'Task_Tile.dart';
import 'package:provider/provider.dart';
import 'package:work_it_out/Models/tasks_data.dart';

class ListOfTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: ListView.builder(
          itemCount: Provider.of<TasksData>(context).changeList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                TaskTile(
                  isChecked:
                      Provider.of<TasksData>(context).changeList[index].isDone,
                  taskTitle:
                      Provider.of<TasksData>(context).changeList[index].name,
                  deleteTaskCallBack:(){
                    Provider.of<TasksData>(context,listen: false).deleteTask(Provider.of<TasksData>(context,listen: false).changeList[index]);
            },

                  checkboxCallBack: (){
                    Provider.of<TasksData>(context,listen: false).updateTask( Provider.of<TasksData>(context,listen: false).changeList[index]);
                  },
                ),
              ],
            );
          },
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
      ),
    );
  }
}
