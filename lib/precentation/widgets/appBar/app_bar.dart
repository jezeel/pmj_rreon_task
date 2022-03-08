import 'package:flutter/material.dart';


AppBar common_Appbar(
    String appbarTitle
    ){
  return AppBar(
    iconTheme: const IconThemeData(
      color: Colors.black
    ),
    centerTitle: true,
    title: Text(appbarTitle, style: TextStyle(
      color: Colors.red.shade900,
    ),),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: (){},
    ),
    actions: [
      IconButton(
          onPressed: (){},
          icon: const Icon(Icons.notifications_none_rounded)
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,

  );
}

