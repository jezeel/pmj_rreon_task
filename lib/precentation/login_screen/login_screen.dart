import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Card txtField4Email(){
      return Card(
        margin: EdgeInsets.only(top: 5.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
          side: const BorderSide(color: Colors.black12, width: 2),
        ),
        child: TextField(
          onChanged: (value) {},
          decoration: const InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.alternate_email_outlined, color: Colors.red,),

          ),
        ),
      );
    }

    Card txtField4Password(){
      return Card(
        margin: EdgeInsets.only(top: 15.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),
          side: const BorderSide(color: Colors.black12, width: 2),
        ),
        child: TextField(
          onChanged: (value){},
          obscureText: hidePassword,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.black),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.lock_outline, color: Colors.red,),
            suffixIcon: IconButton(
                icon: hidePassword
                    ?const Icon(Icons.visibility_off, color: Colors.grey)
                    : const Icon(Icons.visibility, color: Colors.grey,),
                onPressed: (){
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                }
            ),
          ),
        ),
      );
    }
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 35.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.brown.shade900,
                    Colors.red.shade900
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("reon", style: GoogleFonts.mcLaren(
                    fontSize: 35.sp,
                    color: Colors.red.shade900,
                  ),),
                  Text('TECHNOLOGIES', style: GoogleFonts.lato(
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),),
                  const SizedBox(height: 25,),
                  Text("Let's Start with Login!", style: GoogleFonts.lato(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            Positioned(
              top: 30.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 41.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    txtField4Email(),
                    txtField4Password(),
                    Positioned(
                      top: 24.h,
                      child: ButtonTheme(
                        minWidth: 29.w,
                        height: 5.h,
                        child: RaisedButton(
                            shape:  RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(20.0),
                            ),
                            color: Colors.red.shade900,
                            textColor: Colors.white,
                            child: const Text('Login'),
                            onPressed: (){}),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 87.h,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'I forgot password?',
                  style: TextStyle(color: Colors.blueGrey[900] ),
                ),
              ),),
            Positioned(
              top: 92.h,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "I don't have an account?",
                  style: TextStyle(color: Colors.blueGrey[900] ),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}