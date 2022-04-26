import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget newDrawe(BuildContext context1) {
  return Drawer(
    elevation: 0,
    backgroundColor: Colors.black,
    child: ListView(
      children: [
        DrawerHeader(
          margin: EdgeInsets.only(left: 8, right: 8, top: 8),
          // duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: Color(0xff1c2f40),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.6),
              Colors.grey.withOpacity(0.4)
            ]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            "images/brooke-cagle-_wYQnEAMAQk-unsplash.jpg"),
                        fit: BoxFit.cover)),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 10, top: 10),
                child: Text(
                  'Abhinand',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'abhinand@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const ListTile(
          leading: Icon(
            Icons.message,
            color: Colors.grey,
          ),
          title: Text(
            'Messages',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.phone_android,
            color: Colors.grey,
          ),
          title: Text(
            'About',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.timelapse,
            color: Colors.grey,
          ),
          title: Text(
            "Timer",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 250),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "version 2.0.11",
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    ),
  );
}
