import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset('assets/loginImg.svg'),
            Text(
              'Login',
              style:
                  GoogleFonts.nunito(fontSize: 50, fontWeight: FontWeight.w700),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffA2C0EC)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff0065FF)),
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(),
                labelText: "Password",
                labelStyle: TextStyle(color: Color(0xFFA8A8A8)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffA2C0EC)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff0065FF)),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff0065FF)),
                )),
            SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff0065FF),
                          borderRadius: BorderRadius.circular(10.0)),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Continue',
                          style: GoogleFonts.nunito(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xfff5f5f5)),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'OR',
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffc5c5c5)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF1F5F6),
                          borderRadius: BorderRadius.circular(10.0)),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/google.svg'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Login with Google',
                              style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                    text: "New here?",
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xffA8A8A8)),
                    children: [
                      TextSpan(
                        text: ' Register',
                        style: const TextStyle(
                            color: Color(0xff0065FF), fontSize: 16),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
