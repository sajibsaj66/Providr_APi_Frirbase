import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_firebase_sajib/helpers/size_config/size_config.dart';
import 'package:provider_api_firebase_sajib/models/ip_data.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<IpDataModel>(context);
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      height: ScreenSize.height,
      width: ScreenSize.width,
      // child: Row(
      //   children: [
      //     Center(
      //       child: SizedBox(
      //         // width: MediaQuery.of(context).size.width,
      //         width: ScreenSize.width * 0.5,
      //         child: Text(
      //           "This is sajib hy this is my name",
      //           style: TextStyle(fontSize: 60.0),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      child: Center(
        child: _provider.asn == null
            ? CircularProgressIndicator()
            : Text(
                _provider.countryPopulation.toString(),
                style: TextStyle(fontSize: 60.0, color: Colors.red),
              ),
      ),
    );
  }
}
