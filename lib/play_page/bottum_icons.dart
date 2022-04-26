import 'package:flutter/material.dart';

class Bottum_Icons extends StatelessWidget {
  const Bottum_Icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 40,
      width: 310,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)],
          color: Colors.white,
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.6),
            Colors.grey.withOpacity(0.9)
          ]),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.queue_music_sharp,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
