// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:io';

import 'package:electra/services/api/project_api.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

//_________________ Storage to handle Token ____________
// const storage = FlutterSecureStorage();
// final box = GetStorage();

Future<Response> getStations() async {
  try {
    var url = Uri.http(ProjectApi().url, ProjectApi().getNearbyStations);
    var response = await http.get(url);

    return response;
  } on HttpException catch (error) {
    return Response(error.toString(), 503);
  } catch (error) {
    return Response(error.toString(), 500);
  }
}


// }

