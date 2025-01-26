// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   final Function() onLogin;
//   final bool isLoading;

//   const LoginScreen({
//     Key? key,
//     required this.onLogin,
//     this.isLoading = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Welcome to Greenify',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: isLoading ? null : onLogin,
//               child: isLoading
//                   ? const CircularProgressIndicator()
//                   : const Text("Log in"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
