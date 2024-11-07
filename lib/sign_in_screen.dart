import 'package:flutter/material.dart';
import 'package:lab06/sign_up_screen.dart';
import 'package:lab06/reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Log in',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              FlutterLogo(size: 80.0),

              SizedBox(height: 20.0),


              TextField(
                decoration: InputDecoration(
                  labelText: 'Login:',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10.0),


              TextField(
                decoration: InputDecoration(
                  labelText: 'Password:',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10,color: Colors.black)
                  ),
                ),
                obscureText: true,
              ),

              SizedBox(height: 20.0),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text('Message'),
                          content: Text("Need to implement"),
                        );
                      },
                    )
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text('Log in',style: TextStyle(color: Colors.white),),
                ),
              ),


              SizedBox(height: 10.0),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        )
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Text('Sign up',style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextButton(

                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen(),
                          ),
                        )
                      },
                      child: Text('Reset password',style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
