import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'personalScreen.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("สมัคร"),
        backgroundColor: Colors.orange[500],
      ),
      body: bodyRegister(),
    );
  }
}

class bodyRegister extends StatefulWidget {
  const bodyRegister({super.key});

  @override
  State<bodyRegister> createState() => _bodyRegisterState();
}

class _bodyRegisterState extends State<bodyRegister> {
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                "ลงทะเบียน",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 30),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("กดที่นี่ รับรหัสอีกครั้ง"),
              ),
              SizedBox(height: 20),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('ยืนยัน'),
                  color: Colors.orange[500],
                  textColor: Colors.white,
                  onPressed: () {
                    _formKey.currentState?.validate();
                  },
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                        hintText: "verification code/รหัสยืนยัน"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('ยืนยัน'),
                  color: Colors.orange[500],
                  textColor: Colors.white,
                  onPressed: () { 
                    //  onPressed: () async {},  //ใช้ตัวนี้
                    _personal(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _personal(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => personalScreen()));
  }
}

//Todo : ยืนยัน verification ถึงไปหน้าข้อมูลส่วนตัว ยังไม่ทำ
