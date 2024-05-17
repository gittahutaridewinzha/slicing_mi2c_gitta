import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slicing_mi2c/screen_page/Login_page.dart';

class PageSignin extends StatefulWidget {
  const PageSignin({Key? key});

  @override
  State<PageSignin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageSignin> {
  bool _agree = false; // variabel untuk menyimpan nilai kotak centang

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(50)),
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 140,),
                      Image.asset('gambar/logo_udaskin.png'),
                      SizedBox(height: 60,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))),
                            hintText: 'Full name'),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))),
                            hintText: 'Email'),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))),
                            hintText: 'Password'),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(50))),
                            hintText: 'Confirm Password'),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Checkbox(
                            value: _agree,
                            onChanged: (value) {
                              setState(() {
                                _agree = value!;
                              });
                            },
                          ),
                          Text(
                            'I agree with the Term and Condition and The Privacy Policy ',
                            style: TextStyle(
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      MaterialButton(
                        onPressed: (){},
                        padding: EdgeInsets.symmetric(horizontal: 220, vertical: 15),
                        color: Color(0xff333333),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Text('Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('------------------------------------ or ----------------------------------',
                        style: TextStyle(
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: (){},
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('gambar/logo_google.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 20,),
                            Text('Log in with Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 60,),
                      RichText(
                        text: TextSpan(
                            text: "Already have an account?  ",
                            style: TextStyle(
                                color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Log in',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_)
                                      => PageLogin()
                                      ));
                                    },
                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
