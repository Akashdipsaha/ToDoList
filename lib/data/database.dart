import 'package:hive/hive.dart';

class ToDoDatabase{
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  //run this cmd if this is the 1st time ever openning this app
void createInitialData(){
  toDoList = [
    ["Try Sketching", false],
    ["Do exercise", false],
  ];
}
  //load the data from database
void loadData(){
  toDoList = _myBox.get("TODOLIST");
}

  //update the database
void updateDataBase(){
  _myBox.put("TODOLIST", toDoList);
}
}