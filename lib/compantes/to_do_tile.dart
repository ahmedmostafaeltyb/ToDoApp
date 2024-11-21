import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
 final String taskname;
 final  bool  taskcomplated;
 void Function(bool?)? onchanange;
   ToDoTile(
       {required this.onchanange,required this.taskcomplated,required this.taskname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Color(0xFF979797)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Checkbox(value: taskcomplated, onChanged: onchanange,
                activeColor:Colors.black ,),

              Text(taskname,style: TextStyle(
                fontSize: 16,
                fontFamily: 'Pacifico',
                decoration: taskcomplated?TextDecoration.lineThrough
                    :TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
