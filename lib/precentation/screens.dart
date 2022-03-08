import 'package:flutter/material.dart';
import 'package:pmj_reon_project/precentation/profile/profile_screen.dart';
import 'package:pmj_reon_project/precentation/widgets/appBar/app_bar.dart';
import 'home_screen/home_page.dart';
import 'order/order_history/order_history.dart';
import 'order/order_page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage = 1;

  final List _pageList = [
    const ProfilePage(),
    const OrderPage(),
    const OrderHistory(),
  ];

  final List _pageTitle = [
    "Profile",
    "Order",
    "Order History"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: common_Appbar(_pageTitle[_currentPage]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newValue) {
          setState(() {
            _currentPage = newValue;
          });
        },
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(color: Colors.red.shade900),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Profile"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                maxRadius: 20,
                  backgroundColor: Color(0xFFB71C1C),
                  child: Icon(Icons.home, color: Colors.white,)), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        ],
      ),
      body: _pageList[_currentPage],
    );
  }
}
