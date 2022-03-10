import 'package:flutter/material.dart';

import '../widgets/order_taile_widget/order_taile_widget.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: [
          OrderTaileWidget(),
          SizedBox(height: 25,),
          OrderTaileWidget(),
          SizedBox(height: 25,),
          OrderTaileWidget(),
          SizedBox(height: 25,),
          OrderTaileWidget(),
          SizedBox(height: 25,),
          OrderTaileWidget(),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}
