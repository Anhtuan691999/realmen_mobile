import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class registerPhone extends StatelessWidget {
  const registerPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
            ),
          ),
          Stack(alignment: Alignment.center, children: [
            Positioned(
              top: 90,
              child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  // margin: EdgeInsets.symmetric(horizontal: 68),
                  width: 257,
                  height: 478,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: <Widget>[
                          Container(
                            // margin: const EdgeInsets.only(bottom: 35),
                            child: Image.asset(
                              'assets/logovsname.png',
                              width: 121,
                              height: 59,
                            ),
                          ),
                          Container(
                            child: Text(
                              "ĐĂNG NHẬP",
                              style: GoogleFonts.quicksand(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff444444),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 31, bottom: 22),
                            child: Text(
                              "Nhập thông tin",
                              style: GoogleFonts.quicksand(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff444444),
                              ),
                            ),
                          ),
                          // Name
                          Container(
                            width: 220,
                            height: 40,
                            child: TextField(
                              cursorColor: Colors.black,
                              cursorWidth: 1,
                              style: const TextStyle(
                                  height: 1.5,
                                  fontSize: 14,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffC4C4C4)),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffC4C4C4)),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  // top: 10,
                                  // bottom: 20,
                                    left: 15,
                                    right: 15),
                                hintText: "Nhập tên của bạn",
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC4C4C4)),
                              ),
                            ),
                          ),
                          // DOB
                          Container(
                            margin: const EdgeInsets.only(top: 22),
                            width: 220,
                            height: 40,
                            child: TextField(
                              cursorColor: Colors.black,
                              cursorWidth: 1,
                              style: const TextStyle(
                                  height: 1.5,
                                  fontSize: 14,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffC4C4C4)),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffC4C4C4)),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  // top: 10,
                                  // bottom: 20,
                                    left: 15,
                                    right: 15),
                                hintText: "Nhập ngày sinh dd/mm/yy",
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC4C4C4)),
                              ),
                            ),
                          ),
                          // Gender
                          Container(
                            margin: const EdgeInsets.only(top: 22),
                            width: 220,
                            height: 40,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Color(0xffC4C4C4)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                iconSize: 20,
                                items: const [
                                  DropdownMenuItem(
                                      child: Text('NAM'), value: "MALE"),
                                  DropdownMenuItem(
                                      child: Text('NỮ'), value: "FEMALE"),
                                ],
                                onChanged: (value) => value = value,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 22),
                            width: 219,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff302E2E),
                                    Color(0xe6444141),
                                    Color(0x8c484646),
                                    Color(0x26444141),
                                  ]),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: const Text(
                                "HOÀN TẤT",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xffC4C4C4),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            )
          ])
        ],
      ),
    );
  }
}