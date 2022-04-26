import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class Awesome_icons extends StatelessWidget {
  const Awesome_icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.grey,
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.blue.withOpacity(0.9)
                ]),
                borderRadius: BorderRadius.circular(10)),
            width: 160,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Google',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(colors: [
                    Colors.blue.withOpacity(0.9),
                    Colors.black.withOpacity(0.9)
                  ]),
                  borderRadius: BorderRadius.circular(10)),
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Apple',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
