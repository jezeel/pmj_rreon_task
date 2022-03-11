import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/order_taile_widget/order_taile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2.5.h),
                bottomRight: Radius.circular(2.5.h),),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.brown.shade900, Colors.red.shade900],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.h,
              ),
              CircleAvatar(
                radius: 39.0,
                backgroundColor: Colors.red[800],
                child: ClipRRect(
                  child: const Icon(
                    Icons.person,
                    size: 60,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "reonDeliveryboy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text("Thrithalloor, Purathur, Tirur, Malappuram",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Positioned(
              top: 40.h,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.blueGrey[900],
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "About",
                            style: TextStyle(
                                color: Colors.blueGrey[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Delevery Address",
                            style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 12,
                            ),
                          )),
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_basket_rounded,
                            color: Colors.blueGrey[900],
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Recent Orders",
                            style: TextStyle(
                                color: Colors.blueGrey[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    OrderTaileWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                    OrderTaileWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                    OrderTaileWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                    OrderTaileWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                    OrderTaileWidget(),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
