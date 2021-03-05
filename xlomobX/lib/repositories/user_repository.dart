import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlomobX/models/user.dart';
import 'package:xlomobX/repositories/parse_errors.dart';
import 'package:xlomobX/repositories/table_keys.dart';

class UserRepository {
  Future<void> signUp(User user) async {
    final parseUser = ParseUser(user.email, user.password, user.email);

    parseUser.set<String>(keyUserName, user.name);
    parseUser.set<String>(keyUserPhone, user.phone);
    parseUser.set(keyUserType, user.type.index);

    final response = await parseUser.signUp();

    if (response.success) {
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }
}
