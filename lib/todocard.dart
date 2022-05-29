import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({ Key? key, required this.todo}) : super(key: key);

  final String todo; 
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        hoverColor: Colors.red,
        title: Text(todo, style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
    ); 
  }
}