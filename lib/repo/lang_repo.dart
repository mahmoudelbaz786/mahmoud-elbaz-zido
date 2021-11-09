import 'package:shared_preferences/shared_preferences.dart';

class LanguageRepository {
  static final String LANGUAGE = 'Language';

  static Future<bool> saveLang(String lang) async {
    /// write to keystore/keychain
    SharedPreferences prefs = await SharedPreferences.getInstance();
   //await storage.write(key:USER , value: empCode);
    return await prefs.setString(LANGUAGE, lang);
  }

  static Future<String?> hasLang() async {
    /// read from keystore/keychain
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(LANGUAGE);
  }
}
