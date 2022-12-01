import 'package:flutter/material.dart';
import '../Page/homeShopping.dart';

class submitScreen extends StatelessWidget {
  const submitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
      ),
      body: bodySubmit(),
    );
  }
}

class bodySubmit extends StatefulWidget {
  const bodySubmit({super.key});

  @override
  State<bodySubmit> createState() => _bodySubmitState();
}

class _bodySubmitState extends State<bodySubmit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, bottom: 50),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "สมัครสำเร็จ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "ยินดีต้อนรับสมาชิกใหม่",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              "assets/images/success.png",
              width: 200,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "ส่วนลดมากมายกำลังรอคุณอยู่",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50), primary: Colors.orange),
              onPressed: () {
                _homeScreen(context);
              },
              child: Text(
                "เริ่มต้นใช้งาน".toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ))
        ],
      ),
    );
  }

  void _homeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => homeShopping()));
  }
}
