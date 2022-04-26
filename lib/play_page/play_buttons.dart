import 'package:flutter/material.dart';

class Play_Buttons extends StatelessWidget {
  const Play_Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 35,
        left: 5,
      ),
      height: 70,
      width: 280,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
            child: Icon(
              Icons.arrow_left,
              size: 45,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30,
            child: Icon(
              Icons.play_arrow,
              size: 40,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
            child: Icon(
              Icons.arrow_right_sharp,
              size: 45,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
