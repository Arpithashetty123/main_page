import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
        ),
        body: /* Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(onPressed: () {}, child: Text('Click')),
        ),
      ),*/
            Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 400,
                  minHeight: 30,
                  minWidth: 40,
                ),
                child: SizedBox.expand(
                  //it will not take the parameters like height and width
                  //It will take parents height and width that is constraints
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NextScreenName()));
                      },
                      child: Text('Click')),
                ),

                /*    child: SizedBox.shrink(
                  child: ElevatedButton(onPressed: () {}, child: Text('Click')),
                ),*/
              ),
            ],
          ),
        ));
  }
}
