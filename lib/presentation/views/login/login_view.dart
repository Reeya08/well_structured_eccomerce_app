import 'package:flutter/material.dart';

import '../../elements/auth_text_form_field.dart';
import '../../elements/sign_in_button.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getLoginView(context),
    );
  }
  Widget _getLoginView(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 112,
            ),
             Image.asset(
              'assets/images/splash_icon_blue.png',
              height: 72,
              width: 72,
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Wellcome to Lafyuu',
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Text(
              'Sign in to continue',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff9098B1),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            AuthTextField(
              hintText: 'Your Email',
              prefixIcon: Icons.email_outlined,
            ),
            SizedBox(
              height: 8,
            ),
            AuthTextField(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
            ),
            SizedBox(
              height: 16,
            ),
            SignInButton(childText: 'Sign In', onPressed: (){}),
            SizedBox(
              height: 16,
            ),
            Row(children: const [
              Expanded(
                child: Divider(
                  color: Color(0xffEBF0FF),
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff9098B1),
                ),
              ),
              const Expanded(
                  child: Divider(
                    color: Color(0xffEBF0FF),
                  )),
            ]),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffEBF0FF),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children:   [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/google.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  const Text(
                    'Login with Google',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9098B1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffEBF0FF),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children:[
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/facebook.png'),
                  SizedBox(
                    width: 100,
                  ),
                  const Text(
                    'Login with facebook',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9098B1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xff40BFFF),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9098B1),
                  ),
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xff40BFFF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


