import 'package:flutter/material.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:greenify/screens/HomeScreen.dart';
import 'package:greenify/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// class MainView extends StatefulWidget {
//   const MainView({Key? key}) : super(key: key);

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
//   Credentials? _credentials;
//   late Auth0 auth0;
//   bool _isLoading = false;
//   final scheme = 'greenify';

//   @override
//   void initState() {
//     super.initState();
//     auth0 = Auth0('dev-rfbxxf1gkoew8irx.jp.auth0.com',
//         'yvVlRKXy5vuX83ryGi77Y1rEfkb7FC1c');
//   }

//   Future<void> login() async {
//     setState(() => _isLoading = true);
//     try {
//       final credentials =
//           await auth0.webAuthentication(scheme: scheme).login(useHTTPS: true);
//       setState(() => _credentials = credentials);
//     } on WebAuthenticationException catch (e) {
//       showAuthError(context, e.message);
//     } catch (e) {
//       showAuthError(context, 'An unexpected error occurred');
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }

//   Future<void> logout() async {
//     try {
//       await auth0.webAuthentication(scheme: scheme).logout(useHTTPS: true);
//       setState(() => _credentials = null);
//     } on WebAuthenticationException catch (e) {
//       showAuthError(context, e.message);
//     } catch (e) {
//       showAuthError(context, 'An unexpected error occurred');
//     }
//   }

//   void showAuthError(BuildContext context, String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: Colors.red,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_credentials == null) {
//       return LoginScreen(
//         onLogin: login,
//         isLoading: _isLoading,
//       );
//     }
//     return ProfileScreen(
//       user: _credentials!.user,
//       onLogout: logout,
//     );
//   }
// }
