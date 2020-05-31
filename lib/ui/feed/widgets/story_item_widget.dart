import 'package:flutter/material.dart';

class StoryItemWidget extends StatefulWidget {
  @override
  _StoryItemWidgetState createState() => _StoryItemWidgetState();
}

class _StoryItemWidgetState extends State<StoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQF1D1kHVYazhA/profile-displayphoto-shrink_400_400/0?e=1595462400&v=beta&t=glOm7ux1YGzHcoRh5js9uAcJrCuV_dwNczkuwZ1LKSo'

            ),
          ),
          Text(
            'higorlapa',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
