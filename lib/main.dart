import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/controller.dart';
import 'package:webapp/routes.dart';
import 'package:webapp/routesName.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: AppPages.routes, home: HomePage()); // instead of MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //3075
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.013,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: mediaQuery.size.width * 0.101,
                  height: 52,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: mediaQuery.size.width * 0.121,
                ),
                Text("Home"),
                SizedBox(
                  width: mediaQuery.size.width * 0.045,
                ),
                Text("About Us"),
                SizedBox(
                  width: mediaQuery.size.width * 0.045,
                ),
                Text("Our Services"),
                SizedBox(
                  width: mediaQuery.size.width * 0.045,
                ),
                Text("Responsibilities"),
                SizedBox(
                  width: mediaQuery.size.width * 0.045,
                ),
                Text("Country"),
                SizedBox(
                  width: mediaQuery.size.width * 0.045,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff717CFF), width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("Apply"),
                )
              ],
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.045,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: mediaQuery.size.width * 0.163,
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mediaQuery.size.height * 0.06,
                      ),
                      Row(
                        children: [
                          Text(
                            "We Help to ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 50),
                          ),
                          Text(
                            "Build",
                            style: TextStyle(
                                color: Color(0xff717CFF),
                                fontWeight: FontWeight.w900,
                                fontSize: 50),
                          )
                        ],
                      ),
                      Text(
                        "Your Dream",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 50),
                      ),
                      Text(
                        "\nWe are always availed to consult on taking your higher \neducation to the next level so you can stay competitive in",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 25),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height * 0.04,
                      ),
                      Container(
                        width: mediaQuery.size.width * 0.1,
                        decoration: BoxDecoration(
                            color: Color(0xff717CFF),
                            borderRadius: BorderRadius.circular(8)),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Apply Online ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Icon(
                                Icons.arrow_back,
                                textDirection: TextDirection.rtl,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: mediaQuery.size.height * 0.4,
                        width: mediaQuery.size.width * 0.33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  mediaQuery.size.width * 0.33)),
                          color: Color(0xff717CFF),
                        ),
                      ),
                      Center(
                          child: Image.asset(
                        "assets/girl.png",
                        width: mediaQuery.size.width * 0.24,
                        fit: BoxFit.fill,
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
