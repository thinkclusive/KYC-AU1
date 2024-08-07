import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'th'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? thText = '',
  }) =>
      [enText, thText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '9k369944': {
      'en': 'Welcome back!',
      'th': 'ยินดีต้อนรับกลับ!',
    },
    'a7uqk7gx': {
      'en': 'Don\'t you have account?',
      'th': 'คุณไม่มีบัญชีใช่ไหม?',
    },
    '4ud71swz': {
      'en': 'Create Account',
      'th': 'สร้างบัญชี',
    },
    'y2hyiohy': {
      'en': 'Username or Email',
      'th': 'Username or Email',
    },
    'id8q5lht': {
      'en': 'Password',
      'th': 'Password',
    },
    'bneafn64': {
      'en': 'Field is required',
      'th': '',
    },
    'rvw8piyx': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'kzrazysl': {
      'en': 'Field is required',
      'th': '',
    },
    'rl2ol4n4': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '3zcnfflf': {
      'en': 'Forget password',
      'th': 'ลืมรหัสผ่าน',
    },
    'vhhwuzuc': {
      'en': 'Sign In',
      'th': 'Sign In',
    },
    'fru9tbpp': {
      'en': 'Sign in with Phone Number',
      'th': 'Sign in with Phone Number',
    },
    '4tbw2mw1': {
      'en': ' Or  Continue',
      'th': 'ดำเนินการต่อ',
    },
    'ii8lb11g': {
      'en': 'Home',
      'th': '',
    },
    'tl8smau7': {
      'en': 'Login with Bio',
      'th': '',
    },
  },
  // History
  {
    '315qutom': {
      'en': 'Welcome,',
      'th': 'ยินดีต้อนรับ',
    },
    'iykwcxlv': {
      'en': 'user',
      'th': '',
    },
    'yiecbg2i': {
      'en': 'Balance',
      'th': 'ยอดเงินในบัญชี',
    },
    'cqyeucmm': {
      'en': '125,400.55',
      'th': '125,400.55',
    },
    '7t7ok3fk': {
      'en': '1,234',
      'th': '1,234',
    },
    'pyd8hiwd': {
      'en': 'Topup',
      'th': 'เติมเงิน',
    },
    '9oqb4qvx': {
      'en': 'Transfer',
      'th': 'โอน',
    },
    'aqz1j33m': {
      'en': 'Receive',
      'th': 'รับ',
    },
    'yvjx5eif': {
      'en': 'Scan',
      'th': 'ชำระเงิน',
    },
    'pp56wm7i': {
      'en': 'Last Transaction',
      'th': 'รายการล่าสุด',
    },
    'z0uc430r': {
      'en': 'View All',
      'th': '',
    },
    'tnm0ew7z': {
      'en': 'Home',
      'th': '',
    },
  },
  // Account
  {
    '4hy4t247': {
      'en': 'Pratak',
      'th': '',
    },
    'rcz853r7': {
      'en': 'pratak@gmail.com',
      'th': '',
    },
    'mlaox110': {
      'en': 'Complete your profile',
      'th': 'ยืนยันตัวตน',
    },
    'n6uzb8we': {
      'en': '(1/3) validate email',
      'th': '(1/3) ยืนยันอีเมล์',
    },
    '6ftn22le': {
      'en': 'Reward',
      'th': '',
    },
    'xk9rm1p5': {
      'en': 'My Coin',
      'th': 'เหรียญของฉัน',
    },
    'a5n2717i': {
      'en': 'My Reward',
      'th': 'รางวัลของฉัน',
    },
    'l7zpxu8o': {
      'en': 'Invite Friend',
      'th': 'ชวนเพื่อน',
    },
    '5bhl5x9q': {
      'en': 'Setting',
      'th': '',
    },
    'ozbjpjpj': {
      'en': 'Profile',
      'th': 'โปรไฟล์',
    },
    'hq69hh8h': {
      'en': 'Language',
      'th': 'ภาษา',
    },
    '7vu6sofk': {
      'en': 'Notification',
      'th': 'การแจ้งเตือน',
    },
    'r93b7brl': {
      'en': 'Security',
      'th': 'ความปลอดภัย',
    },
    'cqxv5fwj': {
      'en': 'General Info',
      'th': '',
    },
    'w2fmt2l4': {
      'en': 'Help Center',
      'th': 'ช่วยเหลือ',
    },
    'mt0dvbnz': {
      'en': 'Terms and Conditions',
      'th': 'ข้อกำหนดและเงื่อนไข',
    },
    'e997amu2': {
      'en': 'Privacy Policy',
      'th': 'นโยบายความเป็นส่วนตัว',
    },
    '2foub6eh': {
      'en': 'Logout',
      'th': 'ออกจากระบบ',
    },
    '0iupc08q': {
      'en': ' ',
      'th': '',
    },
    'bve6r7rl': {
      'en': 'Account',
      'th': '',
    },
  },
  // SettingNotification
  {
    '3a5052js': {
      'en': 'Notification Setting',
      'th': 'ตั้งค่าการแจ้งเตือน',
    },
    'pck39eux': {
      'en': 'Payment',
      'th': 'รายการชำระเงิน',
    },
    'ray9ppal': {
      'en': 'Receive',
      'th': 'รายการรับเงิน',
    },
    'k6lsh4ft': {
      'en': 'Transfer',
      'th': 'รายการโอนเงิน',
    },
    'i1q8km18': {
      'en': 'Transaction',
      'th': 'รายการอื่นๆ',
    },
    'u9c7ly7k': {
      'en': 'Home',
      'th': '',
    },
  },
  // Transfer
  {
    'q10mh22v': {
      'en': 'Total Amount',
      'th': 'จำนวนเงินทั้งหมด',
    },
    'seubovl0': {
      'en': 'B 450',
      'th': '',
    },
    'xphciu2h': {
      'en': 'Transfer to',
      'th': 'โอนไปยังธนาคาร',
    },
    'scmqsxna': {
      'en': 'Choose destiation bank',
      'th': 'เลือกธนาคารปลายทาง',
    },
    'od97etx2': {
      'en': 'Amount',
      'th': 'จำนวนเงิน',
    },
    'clgna2m6': {
      'en': '1.00',
      'th': '',
    },
    'nn3p00m9': {
      'en': 'Acknowledge for condition of service',
      'th': 'รับทราบเงื่อนไขการให้บริการ',
    },
    'dfzm4p7u': {
      'en': 'Transfer my money',
      'th': 'โอนเงิน',
    },
    '612j2rzl': {
      'en': 'Transfer',
      'th': 'โอนเงิน',
    },
    't9s73lgq': {
      'en': 'Home',
      'th': '',
    },
  },
  // BankSelector
  {
    'kt8s0vq0': {
      'en': 'Australia',
      'th': 'ออสเตรเลีย',
    },
    '2ob166rk': {
      'en': 'ANZ Bank',
      'th': 'ANZ Bank',
    },
    '1vxe8x0q': {
      'en': 'ANZ',
      'th': 'ANZ',
    },
    'b2rhowbs': {
      'en': 'Bendigo Bank',
      'th': 'Bendigo Bank',
    },
    'ir6ytmcz': {
      'en': 'BDG',
      'th': 'BDG',
    },
    'z3lloyzk': {
      'en': 'Thailand',
      'th': 'ไทย',
    },
    'mzu0ue5j': {
      'en': 'Siam Commercial Bank',
      'th': 'ธนาคารไทยพานิชย์',
    },
    'ovu639cb': {
      'en': 'SCB',
      'th': 'SCB',
    },
    'kipm3vit': {
      'en': 'Kasikorn Bank',
      'th': 'ธนาคารกสิกรไทย',
    },
    'm6frrueb': {
      'en': 'KBANK',
      'th': 'KBANK',
    },
    'w8j4cwow': {
      'en': 'Bank',
      'th': 'ธนาคาร',
    },
    '5wx4zbx7': {
      'en': 'Home',
      'th': '',
    },
  },
  // Signup
  {
    'rjcnkf21': {
      'en': 'Email',
      'th': 'Email',
    },
    'evjh2tgl': {
      'en': 'Password',
      'th': 'Password',
    },
    '0v9ik668': {
      'en': 'Confirm Password',
      'th': 'Confirm Password',
    },
    'tsvdmsdu': {
      'en': 'Signup',
      'th': 'ลงทะเบียน',
    },
    'nsqg3gsj': {
      'en': 'Signup',
      'th': 'ลงทะเบียน',
    },
    'cb048vle': {
      'en': 'Home',
      'th': '',
    },
  },
  // Logout
  {
    'ntk6j4hj': {
      'en': 'See ya!',
      'th': '',
    },
    '54lkajku': {
      'en': 'Logout',
      'th': '',
    },
    'szzh85re': {
      'en': 'Logout',
      'th': '',
    },
  },
  // Receive
  {
    '7b8pgj1j': {
      'en': 'Amount (optional)',
      'th': 'จำนวนเงิน (ไม่บังคับ)',
    },
    '4h5d59ux': {
      'en': 'Whatsapp',
      'th': 'Whatsapp',
    },
    'cg8eooqk': {
      'en': 'LINE',
      'th': 'LINE',
    },
    '1vivo51z': {
      'en': 'Copy Link',
      'th': 'Copy Link',
    },
    '9t7m1f6o': {
      'en': 'Receive',
      'th': 'รับเงิน',
    },
    'he5v82yr': {
      'en': 'Home',
      'th': '',
    },
  },
  // menutable
  {
    '3hsnbxv2': {
      'en': 'Search  recept...',
      'th': '',
    },
    'n804n3fp': {
      'en': 'Main Dish',
      'th': '',
    },
    '7ek44di0': {
      'en': 'Appetizers',
      'th': '',
    },
    'z6iamh7c': {
      'en': 'Drink',
      'th': '',
    },
    '25lwngsk': {
      'en': 'ChanyaThai',
      'th': '',
    },
    'ezgax5cv': {
      'en': 'Home',
      'th': '',
    },
  },
  // Home
  {
    'yuzrz8kj': {
      'en': 'Welcome,',
      'th': 'ยินดีต้อนรับ',
    },
    'yrmvimm3': {
      'en': 'user',
      'th': '',
    },
    '3ftfz8l5': {
      'en': 'Balance',
      'th': 'ยอดเงินในบัญชี',
    },
    'ij9oomyd': {
      'en': '\$',
      'th': '125,400.55',
    },
    'qrgl6pfu': {
      'en': '125,400.55',
      'th': '125,400.55',
    },
    'ulijwu7l': {
      'en': '1,234',
      'th': '1,234',
    },
    'q1opg8t9': {
      'en': 'Topup',
      'th': 'เติมเงิน',
    },
    '1avjeclu': {
      'en': 'Transfer',
      'th': 'โอน',
    },
    'c8wwjqlm': {
      'en': 'Receive',
      'th': 'รับ',
    },
    'nrxvfbj7': {
      'en': 'Scan',
      'th': 'ชำระเงิน',
    },
    'pueni88d': {
      'en': 'Shop3',
      'th': '',
    },
    'b6ns5f4w': {
      'en': 'Shop4',
      'th': '',
    },
    'whbys7ap': {
      'en': 'Food',
      'th': '',
    },
    'dsz5wxyz': {
      'en': 'Beverage',
      'th': '',
    },
    'bdltbo20': {
      'en': 'Alcohol',
      'th': '',
    },
    'htlotfkt': {
      'en': 'Desert',
      'th': '',
    },
    '2hggjeql': {
      'en': 'Lager',
      'th': '',
    },
    'dec5ua3l': {
      'en': '5\$',
      'th': '',
    },
    'cb5paftf': {
      'en': 'Handy Man',
      'th': '',
    },
    'zkpxayfs': {
      'en': 'Painter',
      'th': '',
    },
    'iu1ckfmc': {
      'en': 'Home',
      'th': '',
    },
  },
  // menutableHome
  {
    'qr8et629': {
      'en': 'check.io',
      'th': '',
    },
    'xgrxozy3': {
      'en': 'Platform Navigation',
      'th': '',
    },
    'b9h273wq': {
      'en': 'Dashboard',
      'th': '',
    },
    'dt00cnv1': {
      'en': 'Chats',
      'th': '',
    },
    'wxbyic9w': {
      'en': 'Projects',
      'th': '',
    },
    'em2l2upj': {
      'en': 'Settings',
      'th': '',
    },
    'fnzdcbah': {
      'en': 'Notifications',
      'th': '',
    },
    'npjscpd5': {
      'en': '12',
      'th': '',
    },
    'o7ad43c1': {
      'en': 'Billing',
      'th': '',
    },
    '8p31mbd4': {
      'en': 'Explore',
      'th': '',
    },
    'zp0pebb9': {
      'en': 'Light Mode',
      'th': '',
    },
    'nu9pwzn8': {
      'en': 'Dark Mode',
      'th': '',
    },
    '75m0hloi': {
      'en': 'Andrew D.',
      'th': '',
    },
    'nxzpq3vb': {
      'en': 'admin@gmail.com',
      'th': '',
    },
    'sy3mz4nt': {
      'en': 'ChanyaThai',
      'th': '',
    },
    'x64hhmsr': {
      'en': 'Search  recept...',
      'th': '',
    },
    'rf255kjw': {
      'en': 'All',
      'th': '',
    },
    '7dfcvyab': {
      'en': 'Salad',
      'th': '',
    },
    'o10oll2b': {
      'en': 'Stake',
      'th': '',
    },
    '5mk2zl1t': {
      'en': 'Thai',
      'th': '',
    },
    'fpe1b11w': {
      'en': 'Drink',
      'th': '',
    },
    'kzba2x5q': {
      'en': 'All',
      'th': '',
    },
    '0zj1jfhq': {
      'en': 'All',
      'th': '',
    },
    'bg84r790': {
      'en': 'Home',
      'th': '',
    },
  },
  // SettingLanguage
  {
    'yloxzcsy': {
      'en': 'Language Setting',
      'th': 'ตั้งค่าการแจ้งเตือน',
    },
    'j89uoyig': {
      'en': 'English',
      'th': 'รายการชำระเงิน',
    },
    'aes6bu4o': {
      'en': 'Thai',
      'th': 'รายการรับเงิน',
    },
    'nl9h2vxr': {
      'en': 'Home',
      'th': '',
    },
  },
  // LoginOAuth
  {
    'zzejl8n9': {
      'en': 'Welcome back!',
      'th': 'ยินดีต้อนรับกลับ!',
    },
    'pq79kayl': {
      'en': 'Zinga use Aspire signup and signin to acess our  platform',
      'th': 'คุณไม่มีบัญชีใช่ไหม?',
    },
    'qw3kj8hf': {
      'en': 'Sign in with Aspire',
      'th': 'Sign in with Phone Number',
    },
    'nugntb0m': {
      'en': ' Or  Continue',
      'th': 'ดำเนินการต่อ',
    },
    '1vh572qy': {
      'en': 'Home',
      'th': '',
    },
    '778qhrxy': {
      'en': 'Login with Bio',
      'th': '',
    },
  },
  // pincodeAuth
  {
    '7rtvnma4': {
      'en': 'Pin Code Unlock',
      'th': '',
    },
    'cmcxjb52': {
      'en': 'Home',
      'th': '',
    },
  },
  // Home2
  {
    'o92u9f9f': {
      'en': 'Page Title',
      'th': '',
    },
    '3ab4u84x': {
      'en': 'Home',
      'th': '',
    },
  },
  // SettingSecurity
  {
    'zoqcub5f': {
      'en': 'Security Setting',
      'th': '',
    },
    '396bk2lp': {
      'en': 'Biomatric Auth',
      'th': '',
    },
    '4anrtq9m': {
      'en': 'Home',
      'th': '',
    },
  },
  // ReceiverList
  {
    'ot2zmz9v': {
      'en': 'Pratak Rattanawila',
      'th': '',
    },
    'ebc8b52o': {
      'en': 'SCB.TH  1234561234',
      'th': '',
    },
    'exg80pc6': {
      'en': 'ADD Receiver',
      'th': '',
    },
    'balqnhfk': {
      'en': 'Receiver',
      'th': '',
    },
    'qkri27aw': {
      'en': 'Home',
      'th': '',
    },
  },
  // BankAccount
  {
    'uwf9umbr': {
      'en': 'Account Number',
      'th': '',
    },
    'y8lf6saf': {
      'en': 'number only no extra hyphen',
      'th': '',
    },
    'xoeadbjx': {
      'en': 'Account Name',
      'th': '',
    },
    't4nx5ql7': {
      'en': 'Confirm',
      'th': '',
    },
    'w6p3d4dt': {
      'en': 'Receiver Account',
      'th': '',
    },
    'uxq469pv': {
      'en': 'Home',
      'th': '',
    },
  },
  // TransectionListItem
  {
    'vsvbit9o': {
      'en': 'Creative Cloud',
      'th': 'Creative Cloud',
    },
    '6i4e9urh': {
      'en': 'Aug 25, 13:32',
      'th': '25 สค. , 13:32',
    },
    'dtqcj5px': {
      'en': '-฿365',
      'th': '-฿365',
    },
  },
  // ProfileName
  {
    'ms7hiiqb': {
      'en': 'Welcome,',
      'th': '',
    },
  },
  // Item_food
  {
    'k48krsw2': {
      'en': 'Food Header',
      'th': '',
    },
    'rc19vkqv': {
      'en': 'Food Detail',
      'th': '',
    },
    'nebdcqsd': {
      'en': '12\$',
      'th': '',
    },
  },
  // item1
  {
    'fyqbfk3e': {
      'en': 'LagerBeer',
      'th': '',
    },
    '6i4wit1r': {
      'en': '8\$',
      'th': '',
    },
  },
  // menu_item2
  {
    'ahoqfi8i': {
      'en': 'A5 Mazuzaka beef',
      'th': '',
    },
    'bef5rgc1': {
      'en':
          'Premuim A5 grade import from Mazuzaka one place of best beef in japan',
      'th': '',
    },
    'c65vu5cr': {
      'en': 'Rare',
      'th': '',
    },
    'pq63rqoq': {
      'en': 'Medium',
      'th': '',
    },
    'v7epc0bs': {
      'en': 'Well Done',
      'th': '',
    },
    'opez4ta8': {
      'en': 'ADD',
      'th': '',
    },
    'qckeln5n': {
      'en': '5 mins ago',
      'th': '',
    },
    'lzm38lt4': {
      'en': 'Head of Design',
      'th': '',
    },
  },
  // ImageView
  {
    'eke4w64l': {
      'en': 'Hello World',
      'th': '',
    },
  },
  // Miscellaneous
  {
    'n011roc4': {
      'en': 'Request to access Biometric Scanner',
      'th': '',
    },
    'hlq6y26e': {
      'en': 'Request Biomatric Authentication',
      'th': '',
    },
    'cq2j280e': {
      'en': 'Request to access camera',
      'th': '',
    },
    'lzg3yv7y': {
      'en': 'Request to access notification',
      'th': '',
    },
    '3p3zh7s9': {
      'en': '',
      'th': '',
    },
    '3x46u9gq': {
      'en': '',
      'th': '',
    },
    'ip0dq0k5': {
      'en': '',
      'th': '',
    },
    'bnemu4tk': {
      'en': '',
      'th': '',
    },
    'bmwezabv': {
      'en': '',
      'th': '',
    },
    'apkj0ylq': {
      'en': '',
      'th': '',
    },
    '80nq99gu': {
      'en': '',
      'th': '',
    },
    '1xu81fqj': {
      'en': '',
      'th': '',
    },
    'mc2x00d1': {
      'en': '',
      'th': '',
    },
    '49lvu3a2': {
      'en': '',
      'th': '',
    },
    'szffv3ad': {
      'en': '',
      'th': '',
    },
    'yhomau8u': {
      'en': '',
      'th': '',
    },
    'iy0w9aly': {
      'en': '',
      'th': '',
    },
    'iek2xp36': {
      'en': '',
      'th': '',
    },
    'tn4w1c16': {
      'en': '',
      'th': '',
    },
    'j90zrs40': {
      'en': '',
      'th': '',
    },
    'famfndmb': {
      'en': '',
      'th': '',
    },
    'an15cx8j': {
      'en': '',
      'th': '',
    },
    'tq35dtv7': {
      'en': '',
      'th': '',
    },
    '0vb9zm60': {
      'en': '',
      'th': '',
    },
    'xa6r2rnq': {
      'en': '',
      'th': '',
    },
    'esyq1qxy': {
      'en': '',
      'th': '',
    },
    'ug3rvcbp': {
      'en': '',
      'th': '',
    },
    '4qurbwk8': {
      'en': '',
      'th': '',
    },
    'ta2mmeop': {
      'en': '',
      'th': '',
    },
  },
].reduce((a, b) => a..addAll(b));
