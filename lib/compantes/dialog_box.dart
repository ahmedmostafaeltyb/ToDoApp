
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });
  final _formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[800],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Form(
            key: _formkey,
            child: TextFormField(
              controller: controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Add a new Task',
                labelStyle: TextStyle(color: Colors.white,fontFamily:'Pacifico'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.white, width: 2)
                ),
              ),
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'please enter your task';
                }
                else{
                  return null;
                }

              },
              autovalidateMode: AutovalidateMode.onUserInteraction,

            
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child:ElevatedButton(
              child: Text('Cancel'


              ),
              onPressed: onCancel,
              ),
              ),
        SizedBox(
          width: 20,
        ),
            Expanded(
              child: ElevatedButton(
                onPressed: (){
                  if(_formkey.currentState?.validate()==true){
                    onSave();
                  }
                },
                child: Text('Add')

            ),
        ),
      ],
    )
      ],
    );
  }
}