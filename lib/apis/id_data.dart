import 'package:http/http.dart';
import 'package:provider_api_firebase_sajib/models/ip_data.dart';

class ApiData {
  static Future<IpDataModel> getData() async {
    var request =
        Request('GET', Uri.parse('https://ipapi.co/45.127.245.158/json/'));

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      IpDataModel encodeData = ipDataModelFromJson(body);

      print(body);
      return encodeData;
    } else {
      print(response.reasonPhrase);
    }
    return Future.value(IpDataModel());
  }
}
