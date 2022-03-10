import 'package:flutter/material.dart';

// AppBar common_Appbar(
//     String appbarTitle,
//
//
//     ){
//   return AppBar(
//     iconTheme: const IconThemeData(
//       color: appbarTitle == "Profile" ? Colors.white : Colors.blueGrey[900]
//     ),
//     centerTitle: true,
//     title: Text(appbarTitle, style: TextStyle(
//       color: Colors.red.shade900,
//     ),),
//     leading: IconButton(
//       icon: const Icon(Icons.menu),
//       onPressed: (){},
//     ),
//     actions: [
//       IconButton(
//           onPressed: (){},
//           icon: const Icon(Icons.notifications_none_rounded)
//       ),
//     ],
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//
//   );
// }

class AppBar4All extends StatelessWidget {
  final String appbarTitle;
  const AppBar4All({Key? key, required this.appbarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
          color: appbarTitle == "Profile" ? Colors.white : Colors.blueGrey[900]),
      centerTitle: true,
      title: Text(
        appbarTitle,
        style: TextStyle(
          color: appbarTitle == "Profile" ? Colors.white : Colors.red.shade900,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded)),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
