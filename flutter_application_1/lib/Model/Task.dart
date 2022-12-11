class Task{
  final String name;
  bool isDone;

  Task({required this.name,this.isDone=false});

  void doneChange(){
    isDone=!isDone;
  }
}

class TaskImage{
  final String image;
  TaskImage({required this.image});
}