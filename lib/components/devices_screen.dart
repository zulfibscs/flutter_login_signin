import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {


  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    List<String> deviceName=['opp','Iphone','Nokia','Hawawy'];
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Devices '),
      ),
      body: ListView.builder(
        itemCount: deviceName.length,
        itemBuilder: (BuildContext context,  index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 3,vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(33),
              color: Colors.white54
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Device Name:  ${deviceName[index]}',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 16.0),
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
                SizedBox(height: 16.0),
                Text(
                  'Device is ${_isSwitched ? 'on' : 'off'}',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}