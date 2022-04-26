import 'package:flutter/material.dart';
import 'package:new_xd/login_material/textform_ui.dart';

class XDGooglePixel63 extends StatelessWidget {
  const XDGooglePixel63({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ListView(
            children: const [
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Color(0xffd9c3b0),
                      fontSize: 32,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextForm_ui()
            ],
          ),
        ],
      ),
    );
  }
}
