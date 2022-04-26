import 'package:flutter/material.dart';

class Language_buttons extends StatelessWidget {
  const Language_buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          color: Colors.black,
          height: 40,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.withOpacity(0.7),
                      Colors.black.withOpacity(0.7)
                    ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'All',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.withOpacity(0.7),
                      Colors.black.withOpacity(0.7)
                    ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Malayalam',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.withOpacity(0.7),
                      Colors.black.withOpacity(0.7)
                    ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'English',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.withOpacity(0.7),
                      Colors.black.withOpacity(0.7)
                    ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Tamil',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.pink.withOpacity(0.7),
                      Colors.black.withOpacity(0.7)
                    ]),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Hindi',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 15),
            ],
          )),
    );
  }
}
