import 'dart:html';

import 'package:get/get.dart';

class PostProvider extends GetConnect {
  Future<dynamic> getPost() async {
    final response = await get(
        'https://disease.sh/v3/covid-19/countries/Bangladesh',
        //('https://disease.sh/v3/covid-19/countries/${selectedCountry}'),
        headers: {
          'content': 'applicaton /json',
          'application': 'application/json'
        });

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      print(response.body);
      return response.body;
    }
  }
}
