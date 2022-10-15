import 'package:flutter/material.dart';
import 'package:loginpage/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  @override
  fctnofopendwrar() {
    setState(() {
      _scaffoldkey.currentState?.openEndDrawer();
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        endDrawer: Mydrawer(),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: GestureDetector(
                  onTap: fctnofopendwrar,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/1665/1665727.png",
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
        ),
      ),
    );
  }
}
