import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_turn_wrapper/webViewHead.dart';
import 'package:my_turn_wrapper/webViewWindowsHead.dart';
// import 'package:webview_flutter_web/webview_flutter_web.dart';

void main() {
  if (Platform.isWindows) {
    windowsMain();
  } else {
    runApp(const MaterialApp(home: WebViewExample()));
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: firebaseConfig);
//   runApp(MyApp());
// }

class SETTINGS {
  static const title = 'University Heights MyTurn Volunteer Wrapper';
  static const url = 'https://universityheights.myturn.com/library/';
  static const statusBarColor = Colors.blue;
}

// // class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: SETTINGS.title,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: FutureBuilder<WebViewController>(
//         future: () async {
//           // This is an immediately invoked async function that sets up the WebViewController
//           // It does the following:
//           // 1. Creates a new WebViewController instance
//           // 2. Sets the JavaScript mode to unrestricted, allowing all JavaScript to run
//           // 3. Loads the URL specified in SETTINGS.url
//           // 4. Returns null, as the FutureBuilder doesn't need a specific value
//           WebViewController controller = WebViewController()
//             ..setJavaScriptMode(JavaScriptMode.unrestricted)
//             ..loadRequest(Uri.parse(SETTINGS.url));
//           return controller;
//         }(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: const Text(SETTINGS.title),
//                 backgroundColor: SETTINGS.statusBarColor,
//               ),
//               body: WebViewWidget(controller: snapshot.data!),
//             );
//           } else {
//             if (snapshot.hasError) {
//               return Center(child: Text(snapshot.error.toString()));
//             }
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
// // 