import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 5),
          CircleAvatar(
            radius: 2.5,
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
