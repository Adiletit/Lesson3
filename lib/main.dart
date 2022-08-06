// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lesson3(),
    );
  }
}

// class CustomTextfield extends StatelessWidget {
//   const CustomTextfield({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController controller = TextEditingController();

//     return Scaffold(
//       backgroundColor: Colors.blue[100],
//       appBar: AppBar(),
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20), color: Colors.white),
//           width: 300,
//           child: TextField(
//             controller: controller,
//             onChanged: (value) {
//               print(value);
//             },
//             keyboardType: TextInputType.text,
//             obscureText: true,
//             obscuringCharacter: '*',
//             decoration: InputDecoration(
//               hintText: 'password',
//               labelText: 'pass',
//               //  prefixIcon: Icon(Icons.add),
//               prefixText: '+996',

//               suffixIcon: Icon(Icons.close),

//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Colors.blue,
//                   width: 1,
//                 ),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Colors.green,
//                   width: 5,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         print('controller text ====== ${controller.text}');
//       }),
//     );
//   }
// }

class Lesson3 extends StatelessWidget {
  const Lesson3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9A8FF),
      body: Center(
        child: Container(
          height: 350,
          width: 300,
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      color: Colors.grey,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                height: 300,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        Text(
                          'forgot password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff743F8C),
                      ),
                      height: 50,
                      width: 350,
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  Text(
                    '  Sign in',
                    style: TextStyle(color: Colors.blue),
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
