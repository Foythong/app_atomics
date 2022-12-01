import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class onbord_screen extends StatelessWidget {
  const onbord_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: onbordScreen(
          image: 'assets/images/logo.png',
          title:
              "มาเป็นทีมเดียวกับเราเถอะ!ร่วมเดินสู่เส้นทางกิจการของคุณ ซื้อเองรับส่วนลดมากมาย แชร์ไปรับเงินสบายๆ",
          subtitle: "ลงทะเบียนฟรี และ รับคูปองเงินสด",
          textBtn: "เข้าร่วมตอนนี้",
        ),
      ),
    );
  }
}

class onbordScreen extends StatelessWidget {
  const onbordScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.textBtn,
  }) : super(key: key);

  final String image, title, subtitle, textBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color.fromARGB(255, 253, 144, 60),
      child: Column(
        children: [
          const SizedBox(height: 70),
          Image.asset(
            image,
            height: 250,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(1.0),
                fontSize: 20.0),
          ),
          const SizedBox(height: 60),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(1.0),
                fontSize: 20.0),
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255), // background
              onPrimary: Color.fromARGB(255, 0, 0, 0), // foreground
            ),
            onPressed: () {
              _loginScreen(context);
            },
            child: Text(textBtn, style: TextStyle(fontSize: 15.0)),
          )
        ],
      ),
    );
  }

  void _loginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}

//login


