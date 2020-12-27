import 'package:flutter/material.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(
        title:Text("News"),
        leading:IconButton(
          icon:Icon(Icons.menu),
          onPressed:(){
            scaffoldKey.currentState.openDrawer();

          },
        ),
      ),
      body:Center(
          child:Text("hello world")),
    );

  }
}

