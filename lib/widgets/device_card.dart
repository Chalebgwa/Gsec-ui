import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({Key key}) : super(key: key);

  @override
  _DeviceCardState createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    var labelStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 10,
      //decoration: TextDecoration.underline
    );
    var valuetextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w100,
      fontSize: 15,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Divider(
          color: Colors.white,
          endIndent: 10,
          indent: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              QrImage(
                data: "1232568565",
                foregroundColor: Colors.white,
                gapless: true,
                size: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Device Name",
                      style: labelStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "SAMSUNG-J2FU",
                      style: valuetextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Device Serial",
                      style: labelStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("1002-5966-263-5", style: valuetextStyle),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Device Type",
                      style: labelStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      "mobile",
                      style: valuetextStyle,
                    ),
                  ),
                  Divider()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrimaryDevice extends StatelessWidget {
  const PrimaryDevice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Primary Device",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          QrImage(
            data: "1233",
            size: 100,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
