// ignore_for_file: prefer_const_constructors

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recycle_app/Utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isButtonTap = false;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context)
        .textTheme
        .headline2!
        .copyWith(wordSpacing: 2, fontSize: 18, color: Colors.black);
    TextStyle titleSryle = Theme.of(context).textTheme.headline2!.copyWith(
        color: ColorsTheme.primaryColor,
        fontSize: 35,
        fontWeight: FontWeight.bold);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip?",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            DelayedDisplay(
                delay: Duration(seconds: 1),
                slidingBeginOffset: Offset(0.0, -0.35),
                child: Text("Welcome",
                    style: titleSryle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal))),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            DelayedDisplay(
              delay: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RE",
                      style: titleSryle,
                    ),
                    Icon(
                      Icons.redo,
                      color: Colors.red,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              // slidingBeginOffset: Offset(0.0, -0.35),
              delay: Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                        quarterTurns: -90,
                        child: Icon(Icons.redo, color: Colors.red, size: 50)),
                    Text(
                      "YCLE",
                      style: titleSryle,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Text(
              "This appliocation is",
              style: textStyle,
            ),
            Text("design to make your live easier", style: textStyle),
            Text("and our planet is cleaner", style: textStyle),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            reusableButton(
                color: isButtonTap ? Colors.white : null,
                title: "Continue",
                onpress: () {
                  setState(() {
                    isButtonTap = true;
                  });
                  Future.delayed(
                      Duration(seconds: 1),
                      () => Navigator.push(
                          context,
                          PageTransition(
                              child: NextPage1(),
                              type: PageTransitionType.rightToLeft)));
                })
          ],
        ),
      ),
    );
  }
}

///
class NextPage1 extends StatefulWidget {
  const NextPage1({Key? key}) : super(key: key);

  @override
  State<NextPage1> createState() => _NextPage1State();
}

class _NextPage1State extends State<NextPage1> {
  bool isButtonTap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "In this application",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "  you can: ",
                style: Theme.of(context).textTheme.headline5,
              ),
              Image(
                image: AssetImage("images/pana.png"),
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Text(
                "Sort accomulated garbage",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 9),
              reusableButton(
                  color: isButtonTap ? Colors.white : null,
                  title: "Continue",
                  onpress: () {
                    setState(() {
                      isButtonTap = true;
                    });
                    Future.delayed(
                        Duration(seconds: 1),
                        () => Navigator.push(
                            context,
                            PageTransition(
                                child: NextPage2(),
                                type: PageTransitionType.rightToLeft)));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage2 extends StatefulWidget {
  const NextPage2({Key? key}) : super(key: key);

  @override
  State<NextPage2> createState() => _NextPage2State();
}

class _NextPage2State extends State<NextPage2> {
  bool isButtonTap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "In this application",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "you can:",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 19,
              ),
              Image(
                image: AssetImage("images/nana.png"),
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              Text(
                "Order garbage collection",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7),
              reusableButton(
                color: isButtonTap ? Colors.white : null,
                title: "Continue",
                onpress: () {
                  setState(() {
                    isButtonTap = true;
                  });
                  Future.delayed(
                    Duration(seconds: 1),
                    () => Navigator.push(
                      context,
                      PageTransition(
                          child: NextPage3(),
                          type: PageTransitionType.rightToLeft),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage3 extends StatefulWidget {
  const NextPage3({Key? key}) : super(key: key);

  @override
  _NextPage3State createState() => _NextPage3State();
}

class _NextPage3State extends State<NextPage3> {
  bool isButtonTap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "In this application",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text("you can", style: Theme.of(context).textTheme.headline5),
              Image(
                image: AssetImage("images/nana1.png"),
                height: 180,
                width: 180,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              Text("Find out all the information you need",
                  style: Theme.of(context).textTheme.headline6),
              Text("to sort correctly",
                  style: Theme.of(context).textTheme.headline6),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/7,
                  ),
                   reusableButton(
                color: isButtonTap ? Colors.white : null,
                title: "Continue",
                onpress: () {
                  setState(() {
                    isButtonTap = true;
                  });
                  Future.delayed(
                    Duration(seconds: 1),
                    () => Navigator.push(
                      context,
                      PageTransition(
                          child: SigninPage(),
                          type: PageTransitionType.rightToLeft),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
class SigninPage extends StatelessWidget {
  const SigninPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            reusableButton(
              onpress: (){},
              title: "Signin",
              color: Colors.greenAccent,
            ),
            SizedBox(
              height: 20,
            ),
            reusableButton(
              onpress: (){},
              title: "Log in",
              color: Colors.greenAccent,
            ),
            SizedBox(
              height: 20,
            ),
            reusableButton(
              onpress: (){},
              title: "",
              color: Colors.greenAccent,
            ),

          ],
        ),
      ),
      
    );
  }
}

reusableButton({void Function()? onpress, String? title, Color? color}) {
  return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      mouseCursor: MaterialStateMouseCursor.clickable,
      hoverColor: Colors.white,
      color: color != null ? color : ColorsTheme.primaryColor,
      onPressed: onpress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 82),
        child: Text(title!),
      ));
}
