import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:new_xd/Searchbar/SearchBar.dart';
import 'package:new_xd/drawer/drawerpage.dart';
import 'package:new_xd/home_field/list_image.dart';
import 'package:new_xd/play_page/play_page.dart';
import 'package:new_xd/profile_page/profile.dart';

import 'Language_buttons.dart';

class HomeField extends StatefulWidget {
  const HomeField({Key? key}) : super(key: key);

  @override
  State<HomeField> createState() => _HomeFieldState();
}

class _HomeFieldState extends State<HomeField> {
  int slide = 5;

  String currentname = '';
  String currentimage = '';
  String currentsub = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Music Player',
          style: TextStyle(
              color: Color(0xffd9c3b0),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchBarPage()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profile_Page())),
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.white60,
                radius: 13,
                child: Text(
                  'A',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
      // this is the drawer page file
      drawer: newDrawe(context),

      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            //new file available******************
            const Language_buttons(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(
                            () {
                              currentimage = newItems[index]['url'];
                              currentsub = newItems[index]['TITLE'];
                              currentname = newItems[index]['SUB'];

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => Home(
                                    text: currentname,
                                    sub: currentsub,
                                    image: currentimage,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              gradient: LinearGradient(colors: [
                                Colors.pink.withOpacity(0.8),
                                Colors.black.withOpacity(0.9)
                              ]),
                              borderRadius: BorderRadius.circular(10)),
                          // width: 100,
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(newItems[index]['url']),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  gradient: LinearGradient(colors: [
                                    Colors.pink.withOpacity(0.7),
                                    Colors.black.withOpacity(0.7)
                                  ]),
                                ),
                                height: 80,
                                width: 200,
                                child: ListTile(
                                  onTap: () {
                                    setState(
                                      () {
                                        currentimage = newItems[index]['url'];
                                        currentsub = newItems[index]['TITLE'];
                                        currentname = newItems[index]['SUB'];

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (ctx) => Home(
                                                image: currentimage,
                                                text: currentname,
                                                sub: currentsub),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  title: Text(
                                    newItems[index]["TITLE"],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    newItems[index]["SUB"],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                    itemCount: newItems.length),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        tooltip: 'menu',
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.pink,
        overlayColor: Colors.black,
        foregroundColor: Colors.white,
        overlayOpacity: 0.8,
        children: [
          SpeedDialChild(child: const Icon(Icons.share), label: 'share'),
          SpeedDialChild(child: const Icon(Icons.edit), label: 'edit'),
        ],
      ),
    );
  }
}
