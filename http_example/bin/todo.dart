class Todo{

  final String title;
  final String description;
  final bool completed;

  Todo(this.title, this.description, this.completed);



  // convert dart model to json
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = {};
    data['title'] = title;
    data['description'] = description;
    data['completed'] = completed;
    return data;

  }


  //convert json to dart model
  factory Todo.fromJson(json){
    return Todo(
      json['title'], 
      json['description'], 
      json['completed']
      );
  }


  @override
  String toString(){
    return 'title: $title, description: $description, completed: ${completed ? 'yes': 'no'}';
  }



}