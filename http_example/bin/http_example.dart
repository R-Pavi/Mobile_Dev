import 'package:http_example/http_example.dart' as http_example;

import 'http_req.dart';
import 'todo.dart';

void main(List<String> arguments) async {
  HttpReq httpReq = HttpReq();
  // httpReq.addTodo(Todo('Pavi', 'sleep', false));
  // httpReq.getTodos();
  //httpReq.editTodo(35, Todo('Norna cute', 'become a cutie', true));
  // httpReq.deleteTodo(106);

  // //getting todo
  // final List<Todo> todoList = await httpReq.getTodos() ?? [];
  // print("${todoList.length}");
  // print(todoList[1].title); 

  //for loop all the items
  // for(int i=0; i<todoList.length; i++){
  //   // print(todoList[i].title);
  //   // print(todoList[i].description);
  //   // print(todoList[i].completed);
    
  //   print(todoList.toString());
  //   }

   final List<Todo> todoList = await httpReq.getTodos() ?? [];
  for(Todo todo in todoList){
    if (todo.title.toLowerCase().contains('pavi')){
       print(todo.toString());
    }
  }
   
    
  }



 
  

