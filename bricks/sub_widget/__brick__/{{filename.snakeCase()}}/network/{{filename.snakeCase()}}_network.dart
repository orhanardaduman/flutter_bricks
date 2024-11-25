import 'dart:convert';
import 'dart:developer';

import 'package:html_unescape/html_unescape.dart';
import '../../../../../helpers/singleton/base_singelton.dart';
import 'package:http/http.dart' as http;

import '../../../../new_app/__brick__/lib/helpers/extansions/string_extensions.dart';
import '../model/{{filename.snakeCase()}}_model.dart';

class {{filename.pascalCase()}}Network with BaseSingleton {
  Future<{{filename.pascalCase()}}ListModel?> get{{filename.pascalCase()}}() async {
        final response = await customDio.dio.get("".toApi);

    if (response.statusCode == 200) {
      return {{filename.pascalCase()}}ListModel.fromJson(response.data);
    } else {
      return null;
    }
  }
}
