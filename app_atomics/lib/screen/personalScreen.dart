import 'package:flutter/material.dart';
import '../models/myClassform.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:email_validator/email_validator.dart';
import 'PaperScreen.dart';

class personalScreen extends StatelessWidget {
  const personalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ข้อมูลส่วนตัว"),
        backgroundColor: Colors.orange[500],
      ),
      body: bodyPersonal(),
    );
  }
}

class bodyPersonal extends StatefulWidget {
  const bodyPersonal({super.key});

  @override
  State<bodyPersonal> createState() => _bodyPersonalState();
}

class _bodyPersonalState extends State<bodyPersonal> {
  final _formKey = GlobalKey<FormState>();
  final Username = TextEditingController();
  final Email = TextEditingController();
  final refCode = TextEditingController();
  final Fname = TextEditingController();
  final Pass_1 = TextEditingController();
  final Pass_2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      MytextField(
                        myController: Username,
                        fildname: "ชื่อ-นามสกุล",
                        myIcon: Icons.person,
                      ),
                      const SizedBox(height: 10),
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
                      MytextField(
                        myController: Email,
                        fildname: "อีเมล",
                        myIcon: Icons.email,
                      ),
                      const SizedBox(height: 5),
                      MytextField(
                        myController: refCode,
                        fildname: "รหัสผู้แนะนำ",
                        myIcon: Icons.person_add,
                      ),
                      const SizedBox(height: 5),
                      MytextField(
                        myController: Username,
                        fildname: "ชื่อผู้ใช้",
                        myIcon: Icons.person_pin_outlined,
                      ),
                      const SizedBox(height: 5),
                      formPass(
                        myControllerPass: Pass_1,
                        Textpass: "รหัสผ่าน",
                        myIcon: Icons.lock,
                      ),
                      const SizedBox(height: 5),
                      formPass(
                        myControllerPass: Pass_2,
                        Textpass: "ยืนยันรหัสผ่าน",
                        myIcon: Icons.lock,
                      ),
                      const SizedBox(height: 5),
                      Mybutton(
                        onPress: () {
                          _ConfirmPaper(context);
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("กรอกข้อมูลสำเร็จ")));
                          }
                        },
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }

  void _ConfirmPaper(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PaperScreen()));
  }
}

class Mybutton extends StatelessWidget {
  const Mybutton({required this.onPress, super.key});

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: OutlinedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50), primary: Colors.orange),
            onPressed: onPress,
            child: Text(
              "ยืนยัน".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            )));
  }
}


//TODO ยังไม่ทำสมัครลงดาต้าเบส
//TODO ยังไม่สร้างคลาสเช็คอีเมล