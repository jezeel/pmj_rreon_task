import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmj_reon_project/precentation/widgets/appBar/app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails>
    with TickerProviderStateMixin {
  Padding itemsCard(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 7.h,
            width: 12.w,
            child: Image(image: AssetImage('assets/images/629233.jpg'), fit: BoxFit.contain,),
          ),
          SizedBox(width: 4.w,),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rice", style: TextStyle(color: Color(0xff37474f), fontWeight: FontWeight.bold, fontSize: 15),),
                    Text("\$50.00", style: TextStyle(color: Color(0xff37474f), fontWeight: FontWeight.bold, fontSize: 15),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1000g", style:
                TextStyle(color: Color(0xff90a4ae), fontSize: 12),
                ),
                    Text("x 0.5", style:
                        TextStyle(color: Color(0xff90a4ae), fontSize: 12),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: AppBar4All(
            appbarTitle: "Order Details",
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  margin: EdgeInsets.only(top: 11.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                      title: Column(
                    children: [
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Order id: #28",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff37474f)),
                          ),
                          Text(
                            "\$105.00",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff37474f)),
                            //0xff37474f
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Preparing",
                            style:
                                TextStyle(color: Color(0xff90a4ae), fontSize: 12),
                          ),
                          Text(
                            "Cash on Delivery",
                            style:
                                TextStyle(color: Color(0xff90a4ae), fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "22-02-28 10:03",
                            style:
                                TextStyle(color: Color(0xff90a4ae), fontSize: 12),
                          ),
                          Text(
                            "Items: 1",
                            style:
                                TextStyle(color: Color(0xff90a4ae), fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 4.h,
                ),
                TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Color(0xffb71c1c), width: 1.5),
                      insets: EdgeInsets.only(right: 60, left: 60, bottom: 10)),
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  unselectedLabelColor: Colors.blueGrey[800],
                  labelColor: Colors.red[900],
                  tabs: [
                    Tab(
                      icon: Text(
                        "Orderd Foods",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Customer",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
                SizedBox(
                  height: 44.h,
                  child: TabBarView(
                    children: [Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        itemsCard(),
                        itemsCard(),
                        itemsCard()
                      ],
                    ),
                      ListView(
                        children: [
                          Text('Person'),
                          Text('Person')
                        ],
                      ),],
                    controller: _tabController,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.1.h),
                  height: 10.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        children: [
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Order id: #28",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff37474f)),
                              ),
                              Text(
                                "\$105.00",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff37474f)),
                                //0xff37474f
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Preparing",
                                style: TextStyle(
                                    color: Color(0xff90a4ae), fontSize: 12),
                              ),
                              Text(
                                "Cash on Delivery",
                                style: TextStyle(
                                    color: Color(0xff90a4ae), fontSize: 12),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "22-02-28 10:03",
                                style: TextStyle(
                                    color: Color(0xff90a4ae), fontSize: 12),
                              ),
                              Text(
                                "Items: 1",
                                style: TextStyle(
                                    color: Color(0xff90a4ae), fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        children: [
                          SizedBox(
                            height: 0.9.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffb71c1c)),
                              ),
                              Text(
                                "\$105.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffb71c1c)),
                                //0xff37474f
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.h),
              width: 50.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: Color(0xffb71c1c),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                  child: Text(
                    "Mark as Deliverd",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
