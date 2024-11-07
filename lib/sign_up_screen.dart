import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Sign up',style: TextStyle(color: Colors.white),),
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
                  labelText: 'Name:',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),

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
                  child: Text('Sign up',style: TextStyle(color: Colors.white),),
                ),
              ),

              SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      width: 0.5
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text('Back',style: TextStyle(color: Colors.black),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
