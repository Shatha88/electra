
import 'package:electra/components/Provider/Componints/OrderPage/ContainerNewOrder.dart';
import 'package:electra/components/Provider/Componints/OrderPage/ContainerOfPreviousOrder.dart';
import 'package:electra/components/Provider/Componints/OrderPage/textcustomOrder.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Orders",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              kVSpace32,
              textcustomOrder(
                title: "New Order",
              ),
              kVSpace8,
              ContainerNewOrder(),
              kVSpace8,
              Divider(
                thickness: 2,
              ),
              kVSpace8,
              textcustomOrder(
                title: "previous orders",
              ),
              kVSpace8,
              ContainerOfPreviousOrder(),
            ],
          ),
        ),
      ),
    );
  }
}
