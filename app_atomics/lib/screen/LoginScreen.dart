import 'package:flutter/material.dart';
import 'RegisterPage.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:
              onbordLogin(logo: 'assets/images/logo.png', Btnlogin: "Login")),
    );
  }
}

class onbordLogin extends StatelessWidget {
  const onbordLogin({
    required this.logo,
    required this.Btnlogin,
    Key? key,
  }) : super(key: key);

  final String logo, Btnlogin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      color: Color.fromARGB(255, 253, 144, 60),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Image.asset(
              logo,
              height: 250,
            ),
            const SizedBox(height: 40),
            const TextField(
              style: TextStyle(fontSize: 18.0),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                labelText: 'ชื่อผู้ใช้',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              style: TextStyle(fontSize: 18.0),
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                labelText: 'รหัสผ่าน',
              ),
            ),
            const SizedBox(height: 30),
            Text("ลืมรหัสกดที่นี่", style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 255, 255), // background
                  onPrimary: Color.fromARGB(255, 0, 0, 0),
                  padding:
                      const EdgeInsets.fromLTRB(40, 15, 40, 15) // foreground
                  ),
              onPressed: () {},
              child: Text(Btnlogin, style: TextStyle(fontSize: 15.0)),
            ),
            const SizedBox(height: 30),
            InkWell(
              child:  Text("Register ? สมัครที่นี่ฟรี!",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),          
                ), 
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage())),   
            )
                   
          ],
        ),
      ),
    );
  }
}
