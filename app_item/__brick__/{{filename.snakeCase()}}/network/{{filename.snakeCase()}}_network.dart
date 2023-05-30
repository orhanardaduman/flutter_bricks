import 'dart:convert';
import 'dart:developer';

import 'package:html_unescape/html_unescape.dart';
import 'package:valorehber/helpers/singleton/base_singelton.dart';
import 'package:http/http.dart' as http;

import '../model/{{filename.snakeCase()}}_model.dart';

class {{filename.pascalCase()}}Network with BaseSingleton {
  Future<{{filename.pascalCase()}}ListModel?> get{{filename.pascalCase()}}() async {
    final uri = Uri.parse("${constants.baseUrl}esports/matches");
    final response = await http.get(uri);
    var unescape = HtmlUnescape();
    var converted = unescape.convert(response.body);
    log(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(converted);
      return {{filename.pascalCase()}}ListModel.fromJson(data);
    } else {
      return null;
    }
  }
}
