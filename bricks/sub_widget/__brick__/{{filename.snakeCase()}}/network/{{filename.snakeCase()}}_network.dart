
import '../../../../../helpers/singleton/base_singelton.dart';
import '../../../../../helpers/extansions/string_extensions.dart';

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
