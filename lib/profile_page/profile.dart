import 'package:flutter/material.dart';
import 'package:new_xd/main.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  // ignore: non_constant_identifier_names
  final items_Icons = const [
    Icon(
      Icons.manage_accounts,
    ),
    Icon(
      Icons.logout,
    ),
    Icon(
      Icons.phone_android,
    ),
    Icon(
      Icons.feedback,
    ),
    Icon(
      Icons.color_lens,
    ),
    Icon(
      Icons.language,
    )
  ];

  // ignore: non_constant_identifier_names
  final items_Text = [
    'Manage Account',
    'Sign out',
    'About',
    "Feedback",
    "Theme",
    "Language"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              "images/brooke-cagle-_wYQnEAMAQk-unsplash.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Abhinand k",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  " abhinand@gmail.com",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 170,
                              mainAxisExtent: 120,
                              mainAxisSpacing: 25,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10),
                      itemCount: items_Icons.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(colors: [
                                Colors.blue.withOpacity(0.9),
                                Colors.green.withOpacity(0.9)
                              ]),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: items_Icons[index],
                                    color: Colors.black),
                                Text(
                                  items_Text[index],
                                  style: const TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )),
          ),
          const Text(
            'version 2.0.11',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
