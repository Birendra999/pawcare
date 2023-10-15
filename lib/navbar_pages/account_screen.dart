// // ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unnecessary_cast

// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pawcare/navbar_pages/appointment_page.dart';
// import 'package:pawcare/navbar_pages/cartpage.dart';
// // import 'package:pawcare/navbar_pages/cartpage.dart';
// import 'package:pawcare/providers/cart_item_provider.dart';
// import 'package:provider/provider.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.sizeOf(context);
//     CartItemProvider cartProvider = Provider.of<CartItemProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('My Account'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//           child: ListView(
//             children: [
//               Container(
//                 padding: EdgeInsets.fromLTRB(100, 10, 120, 30),
//                 height: 150,
//                 child: Stack(
//                   children: [
//                     CircleAvatar(
//                       radius: size.width * 0.15,
//                       child: Icon(
//                         Icons.person,
//                         size: 100,
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: InkWell(
//                         onTap: (){
                          
//                         },
//                         child: Icon(
//                           Icons.photo,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: size.height * 0.03,
//               ),
//               ListTile(
//                 leading: const Icon(Icons.shopping_cart),
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (BuildContext context) => CartPage()));
//                 },
//                 contentPadding: EdgeInsets.only(left: 20),
//                 title: const Text("My Cart"),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.date_range),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => AppointmentPage()));
//                 },
//                 title: const Text("My Schedules"),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.logout_outlined),
//                 onTap: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: const Text(
//                             "Are you sure that you want to log out?"),
//                         actions: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: const Text("No"),
//                           ),
//                           TextButton(
//                             onPressed: () async {
//                               FirebaseAuth.instance.signOut().then((value) {
//                                 Navigator.pushAndRemoveUntil(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => SignInPage()),
//                                     (route) => false);
//                               });
//                             },
//                             child: const Text("Yes"),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 title: const Text("Logout"),
//               ),

//               // FutureBuilder(
//               //     future: FirebaseFirestore.instance
//               //         .collection('users')
//               //         .doc(FirebaseAuth.instance.currentUser!.uid)
//               //         .get(),
//               //     builder: (context, snapshot) {
//               //       if (snapshot.connectionState == ConnectionState.waiting) {
//               //         return CircularProgressIndicator();
//               //       } else if (snapshot.hasError) {
//               //         return Text('Error: ${snapshot.error}');
//               //       } else {
//               //         final details =
//               //             snapshot.data!.data() as Map<String, dynamic>;

//               //         return Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               "Name: ${details['name']}",
//               //               style: TextStyle(
//               //                 color: Colors.black,
//               //                 fontWeight: FontWeight.bold,
//               //               ),
//               //               ),
//               //             Text(
//               //               "Age: ${details['age']}",
//               //               style: TextStyle(
//               //                 color: Colors.black,
//               //                 fontWeight: FontWeight.bold,
//               //               ),
//               //               )],
//               //         );
//               //       }
//               //     }),

//               //cart
//               // TextButton(
//               //     onPressed: () {
//               //       Navigator.of(context).push(MaterialPageRoute(
//               //           builder: (BuildContext context) => CartPage()));
//               //     },
//               //     child: Text('My Cart')),
//               // //appointments
//               // TextButton(
//               //     onPressed: () {
//               //       Navigator.of(context).push(MaterialPageRoute(
//               //           builder: (BuildContext context) => AppointmentPage()));
//               //     },
//               //     child: Text('My Schedules')),
//               // TextButton(
//               //   onPressed: () async {
//               //     await FirebaseAuth.instance.signOut();
//               //     cartProvider.reinitialize([]);
//               //     Navigator.of(context).pushReplacement(MaterialPageRoute(
//               //         builder: (BuildContext context) => SignInPage()));
//               //   },
//               //   child: Text(
//               //     'Logout',
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unnecessary_cast

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pawcare/login/signinpage.dart';
// import 'package:pawcare/login/pract.dart';
// import 'package:pawcare/login/signinpage.dart';
import 'package:pawcare/navbar_pages/appointment_page.dart';
// import 'package:pawcare/navbar_pages/cartpage.dart';
import 'package:pawcare/providers/cart_item_provider.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  XFile? imageFile;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    CartItemProvider cartProvider = Provider.of<CartItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Account'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () async {
                  imageFile =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (imageFile == null) {
                  } else {
                    setState(() {});
                  }
                },
                child: CircleAvatar(
                  radius: size.width * 0.18,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                onTap: () {},
                contentPadding: EdgeInsets.only(left: 20),
                title: const Text("My Cart"),
              ),
              ListTile(
                leading: const Icon(Icons.date_range),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentPage(),
                    ),
                  );
                },
                title: const Text("My Schedules"),
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text(
                            "Are you sure that you want to log out?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: () async {
                              FirebaseAuth.instance.signOut().then((value) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()),
                                    (route) => false);
                              });
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: const Text("Logout"),
              ),

              // FutureBuilder(
              //     future: FirebaseFirestore.instance
              //         .collection('users')
              //         .doc(FirebaseAuth.instance.currentUser!.uid)
              //         .get(),
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.waiting) {
              //         return CircularProgressIndicator();
              //       } else if (snapshot.hasError) {
              //         return Text('Error: ${snapshot.error}');
              //       } else {
              //         final details =
              //             snapshot.data!.data() as Map<String, dynamic>;

              //         return Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Name: ${details['name']}",
              //               style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //               ),
              //             Text(
              //               "Age: ${details['age']}",
              //               style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //               )],
              //         );
              //       }
              //     }),

              //cart
              // TextButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => CartPage()));
              //     },
              //     child: Text('My Cart')),
              // //appointments
              // TextButton(
              //     onPressed: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => AppointmentPage()));
              //     },
              //     child: Text('My Schedules')),
              // TextButton(
              //   onPressed: () async {
              //     await FirebaseAuth.instance.signOut();
              //     cartProvider.reinitialize([]);
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (BuildContext context) => SignInPage()));
              //   },
              //   child: Text(
              //     'Logout',
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}