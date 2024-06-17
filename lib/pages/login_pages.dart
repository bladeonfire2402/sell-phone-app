import 'package:cellphone/components/my_button.dart';
import 'package:cellphone/components/text_field.dart';
import 'package:cellphone/pages/home_pages.dart';
import 'package:cellphone/pages/register_pages.dart';
import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPages> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController titleText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center widget to center the entire Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_rounded,
              size: 100,
            ),
            const SizedBox(height: 10,),
            Container(
              //SwapLoginorRegister
              width: 300,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                 BoxShadow(
                   color: Colors.grey.shade300,
                   offset: const Offset(4.0, 4.0),
                   blurRadius: 7,
                   spreadRadius: 1.0

                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-2, -4),
                    blurRadius: 15,
                    spreadRadius: 1.0
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 3, color: Colors.grey),
                    )),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPages()));
                      },
                      child: Text(
                        'Sign-Up',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //FillSection
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),

                  //input Email
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email address',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),

                  MyTextfield(
                      controller: emailController,
                      hintText: 'Nhập email',
                      titleText: 'Email',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),

                  //input password
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey)),
                  ),

                  MyTextfield(
                      controller: password,
                      hintText: 'Nhập mật khẩu',
                      titleText: 'password',
                      obscureText: false),

                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Forgot passcode ?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              //Login
              child: MyButton(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  HomePages()));
                },
                text: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
