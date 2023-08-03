import 'package:flutter/material.dart';
import 'package:training101/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String name = "Kamrul";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Kamrul"),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 100,
                      child: Text( 'Login Information', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                      )
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone number, email or username',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),

              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      child: Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen()));
                      },

                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                  child: Center(
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 62),
                          child: Text('Don\'t have account? '),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:1.0),
                          child: InkWell(
                              onTap: (){
                                print('hello');
                              },
                              child: Text('Create an account.', style: TextStyle(fontSize: 14, color: Colors.blue),)),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ),

    );
  }
}
