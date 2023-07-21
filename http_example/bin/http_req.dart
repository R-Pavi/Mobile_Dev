//consider this package as http
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo.dart';

class HttpReq{
  final String _baseUrl = 'http://192.168.18.51:8888';
  final Map<String , String> _headers = {'Content-Type' : 'application/json'};

  // GET
  Future<List<Todo>?> getTodos() async {    
    try{
    final http.Response response = await http.get(Uri.parse('$_baseUrl/todo'));
    print(response.statusCode);
    print(response.body);   
    

    //we should convert json list to dart object list
    final List<Todo> todos = ((jsonDecode(response.body)) as List)
    .map(
      (item) => Todo(
        item['title'], 
      item['description'], 
      item['completed']),
      ).toList();

      return todos;
      
      }
    catch(error){
      print("Error: $error");      
    }    

    
    }


// POST
Future<void> addTodo(Todo todo) async{
  try{

  
   final http.Response response = await http.post(
   Uri.parse('$_baseUrl/todo'),
   body: jsonEncode(todo.toJson()) , 
   headers: _headers,
  );

  print(response.statusCode);
  print(response.body);
  }catch(error){
      print("Error: $error");      
    }  

} 


// PUT
Future<void> editTodo(int id , Todo todo) async {
  try{
  final http.Response response = await http.put(
    Uri.parse('$_baseUrl/todo/$id') , 
    body : jsonEncode(todo.toJson()),
    headers: _headers,
    );

    print(response.statusCode);
    print(response.body);
  }
  catch(error){
      print("Error: $error");      
    }  
}


//DELETE
Future<void> deleteTodo(int id) async {
  try{
  final http.Response response = await http.delete(
    Uri.parse('$_baseUrl/todo/$id') ,
    headers: _headers,
    
  );

  print(response.statusCode);
  print(response.body);
  }catch(error){
      print("Error: $error");      
    }  
}


}



