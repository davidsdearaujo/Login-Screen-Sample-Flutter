import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.65), BlendMode.overlay),
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.menu,
                      size: 35,
                      color: Colors.pink[100],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  _formField(
                      prefixIcon: Icons.person_outline,
                      hintText: "Enter Username"),
                  SizedBox(
                    height: 30,
                  ),
                  _formField(
                      prefixIcon: Icons.lock_outline,
                      hintText: "Enter Password",
                      sulfixIcon: Icons.info_outline,
                      obscureText: true),
                  ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 50, left: 70, right: 70),
                    title: RaisedButton(
                      padding: EdgeInsets.all(20),
                      color: Colors.pink[300],
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye,
                        size: 35, color: Colors.pink[300]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard,
                        size: 35, color: Colors.pink[300]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.gradient, size: 35, color: Colors.pink[300]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.group, size: 35, color: Colors.pink[300]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _formField(
      {IconData prefixIcon,
      String hintText,
      IconData sulfixIcon,
      bool obscureText = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        elevation: 7,
        child: TextFormField(
          obscureText: obscureText,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 25),
              child: Icon(
                prefixIcon,
              ),
            ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            contentPadding: EdgeInsets.all(15),
            suffixIcon: sulfixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 25, right: 12),
                    child: Icon(
                      sulfixIcon,
                    ),
                  )
                : SizedBox(
                    width: 1,
                    height: 1,
                  ),
          ),
        ),
      ),
    );
  }
}
