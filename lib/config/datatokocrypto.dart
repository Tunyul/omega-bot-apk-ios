import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpGetBalanceAcc with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  void getBalances() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String getkey = preferences.getString('skeybin') ?? '';
    String getsec = preferences.getString('ssecbin') ?? '';

    // String baseUrl = 'https://api.binance.com/api/v3/account?';
    String baseUrl = 'https://https://www.tokocrypto.com/api/v3/account?';
    int timeStamp = DateTime.now().millisecondsSinceEpoch;
    String queryParams =
        'recvWindow=3000' + '&timestamp=' + timeStamp.toString();
    String secret = getsec;
    // 'ie3qt3KTKvtRARcSFGY3csYw9zQciXekktgkCmEIvEMLBop0HDE0RXdkL7zBlDts';

    List<int> messageBytes = utf8.encode(queryParams);
    List<int> key = utf8.encode(secret);
    Hmac hmac = new Hmac(sha256, key);
    Digest digest = hmac.convert(messageBytes);
    String signature = hex.encode(digest.bytes);
    String link = baseUrl + queryParams + "&signature=" + signature;
    Uri url = Uri.parse(link);

    var response = await http.get(url, headers: {
      "Accept": "application/json",
      "HTTP_ACCEPT_LANGUAGE": "en-US",
      "Accept-Language": "en-US",
      "X-MBX-APIKEY": getkey
      // "zVjIAFqi4XYRq1kUGUBxlBXRI7CSFcc4NLXe3xmQkcNZchmdI9FZUEINM52Otrvk"
    });

    var databal = jsonDecode(response.body)['balances'];
    var dt = databal.firstWhere((d) => d['asset'] == 'USDT');

    // print(databal);
    // print(dt);

    _data = (dt);

    print(_data);
    notifyListeners();
  }
}
