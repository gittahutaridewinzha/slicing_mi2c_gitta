import 'package:flutter/material.dart';
import 'package:slicing_mi2c/screen_page/Login_page.dart';
import 'package:slicing_mi2c/screen_page/Signin_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('gambar/background.jpg'),
                      fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 280,),
                Image(image: AssetImage('gambar/logo_udaskin.png'),
                height: 55,
                ),
                SizedBox(height: 200),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)
                        => PageLogin()
                        ));
                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text('Log In',
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)
                        => PageSignin()
                        ));
                      },
                      child: Container(
                        width: 320,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff333333),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text('Sign In',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
