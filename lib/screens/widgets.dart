import 'package:flutter/material.dart';
import 'package:what_todo/screens/taskpage.dart';
import '../database_helper.dart';


class TaskCardWidget extends StatelessWidget {
  //const TaskCardWidget({Key? key, this.title}) : super(key: key);

  final String? title;
  final String? desc;

  DatabaseHelper _dbhelper = DatabaseHelper();
  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 24,
      ),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),

            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title??"TITlE",
                    style: TextStyle(
                      color: Color(0XFF221551),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                    ),
                  ),
                  Text(
                    desc??"description",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF86829D),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

class TodoWidget extends StatelessWidget {
  //const TodoWidget({Key? key}) : super(key: key);

  final String? text;
  final bool isDone;

  TodoWidget({this.text,required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: EdgeInsets.only(
              right: 14.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? Color(0XFF0F6AF9) : Colors.transparent,
              borderRadius: BorderRadius.circular(5.5),
              border: isDone
                  ? null
                  : Border.all(
                      color: Color(0XFF868292),
                      width: 1.5,
                    ),
            ),
            child: Image(
              image: AssetImage('assets/images/check_icon.png'),
            ),
          ),
          Flexible(
            child: Text(
              text??"Task",
              style: TextStyle(
                color: isDone?Color(0XFF4D4C41):Color(0XFF868292),
                fontSize: 18.0,
                fontWeight: isDone?FontWeight.bold:FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}