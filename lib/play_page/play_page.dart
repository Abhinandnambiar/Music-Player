import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_xd/play_page/play_buttons.dart';

import 'bottum_icons.dart';

class Home extends StatefulWidget {
  final String image;
  final String text;
  final String sub;

  Home({
    Key? key,
    required this.image,
    required this.text,
    required this.sub,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 20,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 25),
            child: Container(
              height: 30,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9), color: Colors.black),
              child: Center(
                  child: Text(
                widget.sub,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          const SizedBox(height: 35),
          Container(
            margin: const EdgeInsets.only(left: 35, right: 29),
            child: Slider(
              activeColor: Colors.blue,
              inactiveColor: Colors.grey.shade400,
              thumbColor: Colors.blue,
              value: number.toDouble(),
              onChanged: (value) {
                setState(() {
                  number = value.toInt();
                });
              },
              max: 100,
              min: 4,
            ),
          ),
          SizedBox(
            height: 20,
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '0:00',
                  style: TextStyle(color: Colors.grey),
                ),
                Text('4:28', style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          const Play_Buttons(),
          const SizedBox(
            height: 40,
          ),
          const Bottum_Icons()
        ],
      ),
    );
  }
}
