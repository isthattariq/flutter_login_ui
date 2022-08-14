import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.greenAccent,
        body: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.only(left: 30.r, right: 30.r, top: 50.h),
            child: Column(
              children: [
                //--------Circle container with icon
                Container(
                  //margin: const EdgeInsets.all(100),
                  height: 150.r,
                  width: 150.r,
                  decoration:  BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0.r),
                    ),
                  ),
                  child:  Icon(
                    Icons.person,
                    size: 120.r,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 18.h),
                //----------name Text
                 Text(
                  'Muhammad Tariq',
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60.h),
                //----- 2 TextFiled
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0.r)),
                      hintText: 'Email'),
                ),
                SizedBox(height: 18.h),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    hintText: 'Password',
                  ),
                ),

                SizedBox(height: 25.h),
                //---------- Button
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.r))),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 80.h),
                //--------- signup
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not Register? ',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
