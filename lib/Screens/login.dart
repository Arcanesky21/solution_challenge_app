import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color bColor = const Color(0xff6c63ff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/slogo.PNG'),
             Text('Login', style: GoogleFonts.roboto(fontSize: 30),),
            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),

            ),
            //space between email and password
            const SizedBox(
              height: 30,
            ),
            //Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
            ),
            //forgot password section/function
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: bColor),
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: bColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: const Size(300, 40)),
              onPressed: () {},
              child: const Text(
                'Login',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 50.0, right: 20.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 40,
                    )),
              ),
              const Text("OR"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 50.0),
                  child: const Divider(
                    color: Colors.black,
                    height: 40,
                  ),
                ),
              ),
            ]
            ),
            //sign in with google
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
