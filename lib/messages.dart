import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {

    'en_US':{
      'hello': 'Hello',
      'home': 'HOME',
      'theme': 'THEME',
      'lang': 'LANGUAGE',
      'ht':'THESE IS HOME SCREEN',
      'tb':'THEME SCREEN',
      'lb':'LANGUAGE',
      'lighttheme': 'Light Theme',
      'darktheme': 'Dark Theme',
      'settings':'Settings',
  },
    'hi_IN': {
      'hello': 'नमस्कार',
      'home': 'घर',
      'theme': 'विषय',
      'lang': 'भाषा',
      'ht':'यह घर स्क्रीन है',
      'tb':'विषय स्क्रीन',
      'lb':'भाषा',
      'lighttheme': 'प्रकाश थीम',
      'darktheme': 'डार्क थीम',
      'settings':'समायोजन',

    }

  };

}