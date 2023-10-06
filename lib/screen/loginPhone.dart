import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logovsname.png', width: 200, height: 150, ),
              SizedBox(
                height: 25,
              ),
              Text
                ('Đăng Nhập',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text
                ('Nhập Số Điện Thoại',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(10), FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Số Điện Thoại.....",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child:  ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "otp");
                  },
                  child:Text('Tiếp Theo'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child:  ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "register");
                  },
                  child:Text('Dang Ky'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
