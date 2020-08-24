import 'package:flutter/material.dart';
import 'package:pdpui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                  1,
                  Text(
                    "Find the best parties near you.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 1.1),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.99),
                        fontSize: 25,
                        fontWeight: FontWeight.w100),
                  )),
              SizedBox(
                height: 150,
              ),
              FadeAnimation(1.5,Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: _isLogin ? Colors.yellow[900] : Colors.red,
                ),
                child: Center(
                    child: _isLogin
                        ? Text(
                      "Start",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                        : Text(
                      "Google+",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),),

              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
