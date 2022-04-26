import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.close),
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Search...',
                  fillColor: Colors.grey,
                  filled: true),
            ),
          ),
        ],
      ),
    );
  }
}
