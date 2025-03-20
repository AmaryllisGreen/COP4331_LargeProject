import 'dart:ui';
import 'styles.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // This widget is the root of your application.


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  void initState(){
    super.initState();

    usernameController.addListener(() => setState(() {}));
    passwordController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //background
        backgroundColor: Colors.grey[500],
        //top black bar
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        //middle pieces
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 45.0,
            children: <Widget>[


              //LOGIN stripe
              Material(
                elevation: 4,
                child: Container(
                  //padding: EdgeInsets.all(20.0),
                  color: Colors.amber,
                  width: 412,
                  height: 89,
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),
                ),
              ),
              //textboxes and button
              Form(
                child: Column(
                  spacing: 40,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    //username textbox
                    Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                      width: 336,
                      height: 65,
                      child: TextField(
                        controller: usernameController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: Styles.fieldTextStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),


                    //password textbox
                    Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                      width: 336,
                      height: 65,
                      child: TextField(
                        controller: passwordController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: Styles.fieldTextStyle,
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: isPasswordVisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                            onPressed: () =>
                              setState(() => isPasswordVisible = !isPasswordVisible),
                          ),
                        ),
                        obscureText: isPasswordVisible,
                      ),
                    ),


                    //Sign in button
                    MaterialButton(
                      onPressed: () {
                        print('username: ${usernameController.text}');
                        print('password: ${passwordController.text}');
                      },
                      elevation: 4,
                      color: Styles.schemeMain.secondary,
                      shape: Styles.buttonShape,
                      height: 70,
                      minWidth: 350,
                      child: const Text(
                        'Sign In',
                        style: Styles.buttonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              /*
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Text('Not registered?'),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      ' Create an account.',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),
                ],
              ),

               */
            ],
          ),
        ),
        //bottom bar with UCF name and pegasus
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Image.asset('assets/ucffooter.png'),
        ),
      ),
    );
  }
}

/*
class LoginPage extends StatefulWidget {
  //const LoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  //final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        //title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.grey[400],
            )
          ]

        ),
      ),
    );
  }
}
*/
