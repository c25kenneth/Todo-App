import 'package:flutter/material.dart';
import 'package:todo_app/todocard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Todo Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String newToDo = "";
  List<String> todoList = [
    "Take out the trash",
    "Walk the dog", 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...todoList.map((todo) => TodoCard(todo: todo)).toList(),
                  TextField(
                    onChanged: (val) {
                      setState(() {
                        newToDo = val; 
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Add To-Do!",
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      todoList.add(newToDo); 
                    });
                  }, icon: Icon(Icons.send))
                ]
          ),
          ),
      ), 
    );
  }
}
