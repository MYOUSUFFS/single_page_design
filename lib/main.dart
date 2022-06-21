import 'const.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appName,
      home: FrtClass(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FrtClass extends StatelessWidget {
  const FrtClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                //*********Image Set********
                Image.asset(
                  topImage,
                  height: height * 0.4,
                  width: width,
                  fit: BoxFit.cover,
                ),
                //*********Container*********
                Container(
                  height: height * 0.42,
                  width: width,
                  //color: Colors.blue.withOpacity(0.3),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.85],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                ),
                //*********title***********
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
                      children: const [
                        //*********App Name***********
                        Text(
                          appName,
                          style: TextStyle(
                            color: ourColor,
                            fontSize: 25.9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //*********app Slogan*********
                        Text(
                          slogan,
                          style: TextStyle(color: ourColor, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Container(
                child: const Text(
                  "  $logIn  ",
                  style: TextStyle(fontSize: 25.0),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ourColor.withOpacity(0.4),
                      ourColor.withOpacity(0.02)
                    ],
                  ),
                  border: const Border(
                    left: BorderSide(color: ourColor, width: 5),
                  ),
                ),
              ),
            ),
            // ********Mail TextField**********
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ourColor)),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: ourColor,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(color: ourColor, fontSize: 16),
                ),
              ),
            ),
            // ********passWord TextField**********
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ourColor)),
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: ourColor,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: ourColor, fontSize: 16),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: null,
                child: Text(
                  forgetPassword,
                  style: TextStyle(color: ourColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 8.0,
              ),
              child: Center(
                child: SizedBox(
                  height: height * 0.08,
                  width: width - 80,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: ourColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      loginToaccount,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: ourColor,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  child: const Text("Create Account"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
