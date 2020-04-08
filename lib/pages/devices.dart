import 'package:flutter/material.dart';
import 'package:gsec/widgets/device_card.dart';

class Devices extends StatelessWidget {
  const Devices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(.7),
          ),
          AnimatedList(
            initialItemCount: 100,
            itemBuilder: (context, index, animation) {
              if (index == 0) {
                return PrimaryDevice();
              }
              return DeviceCard();
            },
          ),
        ],
      ),
    );
  }
}
