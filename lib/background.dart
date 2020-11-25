import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 12,
              left: -10,
              child:
              Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.6,
              ),
            ),
            Positioned(
              bottom: -25,
              right: -70,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.8,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
