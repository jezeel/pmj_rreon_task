import 'package:flutter/material.dart';
import 'package:pmj_reon_project/precentation/order/order_details/order_details.dart';

class OrderTaileWidget extends StatelessWidget {
  const OrderTaileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),),
              elevation: 3,
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  const [
                      Text(
                        "\$105.00",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff37474f)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                            bottom: 8,
                          ),
                          child: Text(
                            "Cash on Delivery",
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                  iconColor: Colors.transparent,
                  collapsedIconColor: Colors.transparent,
                  title: const Text(
                    "Order id: #28",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "28-02-2022 | 10:03",
                    style: TextStyle(color: Colors.grey),
                  ),
                  children: <Widget>[
                    ListTile(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text("Delivery Fee"), Text("\$50.00")],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text("Tax(5.0%)"), Text("\$5.00")],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text("Total"), Text("\$105.00")],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OrderDetails();
                      },
                    ),
                  );
                },
                child: Text("View Details >", style: TextStyle(color: Color(0xff37474f)),),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Text("Prepairing", style: TextStyle(color: Colors.white, fontSize: 12),),
        ),
      ],
    );
  }
}
