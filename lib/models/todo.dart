class Todo {

  final int? id;
  final int? taskId;
  final String? title;
  final int? isDone;


  Todo({this.id,this.taskId, this.title, this.isDone});

  Map<String, dynamic> todoMap() {
    return {
      "id": id,
      "taskId": taskId,
      "title": title,
      "isDOne": isDone,

    };
  }
}