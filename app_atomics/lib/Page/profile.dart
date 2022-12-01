import 'package:flutter/material.dart';
import 'settingScreen.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyProfile(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), // here the desired height
        child: SafeArea(
          child: Container(
              height: 130,
              color: Colors.orange[500],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {
                            _setting(context);
                          }),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "assets/images/profile.png",
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Atomics",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void _setting(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => settingScreen()));
  }
}

class bodyProfile extends StatefulWidget {
  const bodyProfile({super.key});

  @override
  State<bodyProfile> createState() => _bodyProfileState();
}

class _bodyProfileState extends State<bodyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
       
      child: Padding(
        
        padding: const EdgeInsets.only(top: 15.0, right: 10.0),
        
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("รายการของฉัน",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      onPressed: () {}),
                ],
                 
              )
            ],
          ),
          ),  
    );
  }
}
