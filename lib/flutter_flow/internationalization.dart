import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'zh_Hans', 'zh_Hant'];

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
    String? zh_HansText = '',
    String? zh_HantText = '',
  }) =>
      [enText, zh_HansText, zh_HantText][languageIndex] ?? '';

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
  // SettingPage
  {
    'e7rsy6yw': {
      'en': 'Setting',
      'zh_Hans': '设置',
      'zh_Hant': '設定',
    },
    'alra7fge': {
      'en': 'Settng',
      'zh_Hans': '设置',
      'zh_Hant': '設定',
    },
  },
  // HomePage
  {
    'xo8r5mvf': {
      'en': 'Home',
      'zh_Hans': '主页',
      'zh_Hant': '首頁',
    },
    'v6hmkhl1': {
      'en': 'Search all items...',
      'zh_Hans': '搜索所有项目...',
      'zh_Hant': '搜尋所有項目...',
    },
    'ar8klsik': {
      'en': 'For You',
      'zh_Hans': '为你',
      'zh_Hant': '為你',
    },
    'xx393j78': {
      'en': 'Sci-Fi',
      'zh_Hans': '科幻',
      'zh_Hant': '科幻',
    },
    'a9kfn9u3': {
      'en': 'Fiction',
      'zh_Hans': '小说',
      'zh_Hant': '小說',
    },
    '5lx1eixl': {
      'en': 'Technology',
      'zh_Hans': '技术',
      'zh_Hant': '科技',
    },
    'qd0cqmph': {
      'en': 'Ai News',
      'zh_Hans': '艾新闻',
      'zh_Hant': '艾新聞',
    },
    'g8xnly92': {
      'en': 'Startups',
      'zh_Hans': '初创公司',
      'zh_Hant': '新創公司',
    },
    'g8kgt2wo': {
      'en': 'For You',
      'zh_Hans': '为你',
      'zh_Hant': '為你',
    },
    'nagky2ee': {
      'en': 'Home',
      'zh_Hans': '主页',
      'zh_Hant': '首頁',
    },
  },
  // UploadPage
  {
    'sh6fjc49': {
      'en': 'Upload',
      'zh_Hans': '上传',
      'zh_Hant': '上傳',
    },
    'etie5zss': {
      'en': 'Create Usage Report',
      'zh_Hans': '创建使用报告',
      'zh_Hant': '建立使用報告',
    },
    'lvef7veg': {
      'en': 'Fill out the form below to submit.',
      'zh_Hans': '填写下面的表单并提交。',
      'zh_Hant': '填寫下面的表單並提交。',
    },
    '1b80i1s2': {
      'en': 'Name...',
      'zh_Hans': '名字...',
      'zh_Hant': '名字...',
    },
    '6e4asao7': {
      'en': 'Short Description of how well it was used...',
      'zh_Hans': '简短描述它的使用情况...',
      'zh_Hant': '簡短描述它的使用情況...',
    },
    '6f72xx8p': {
      'en': 'Upload Photo',
      'zh_Hans': '上传图片',
      'zh_Hant': '上傳圖片',
    },
    'ov2lky4h': {
      'en': 'Submit',
      'zh_Hans': '提交',
      'zh_Hant': '提交',
    },
    'mx9jp0ta': {
      'en': 'Upload',
      'zh_Hans': '上传',
      'zh_Hant': '上傳',
    },
  },
  // ArchivePage
  {
    'zz3s5ksy': {
      'en': 'Archive',
      'zh_Hans': '归档',
      'zh_Hant': '歸檔',
    },
    'a2v17m5p': {
      'en': 'Archive',
      'zh_Hans': '归档',
      'zh_Hant': '歸檔',
    },
  },
  // ItemCard
  {
    'j8jt0qhw': {
      'en': 'Vitsoe 1982',
      'zh_Hans': '维措 1982',
      'zh_Hant': '維措 1982',
    },
    '89kp49lm': {
      'en': '\$126.20',
      'zh_Hans': '126.20 美元',
      'zh_Hant': '126.20 美元',
    },
    '6xuwdw2y': {
      'en': 'Ordered on Feb 15, 2022',
      'zh_Hans': '2022 年 2 月 15 日订购',
      'zh_Hant': '2022 年 2 月 15 日訂購',
    },
  },
  // ArchiveCard
  {
    'siwxhiop': {
      'en':
          'HSBC is getting back into consumer lending in the us according to...',
      'zh_Hans': '根据...汇丰银行正在重新进入美国的消费贷款业务',
      'zh_Hant': '根據...匯豐銀行正在重新進入美國的消費貸款業務',
    },
    'pmfgx8n3': {
      'en': '12h',
      'zh_Hans': '12小时',
      'zh_Hant': '12小時',
    },
    '16bc16sh': {
      'en': 'Read Now',
      'zh_Hans': '现在读',
      'zh_Hant': '現在讀',
    },
  },
  // DarkLightSwitch
  {
    'l6lvqlq2': {
      'en': 'Light Mode',
      'zh_Hans': '浅色模式',
      'zh_Hant': '淺色模式',
    },
    'cuvynq8q': {
      'en': 'Dark Mode',
      'zh_Hans': '深色模式',
      'zh_Hant': '深色模式',
    },
  },
  // Miscellaneous
  {
    '9pmi8eh7': {
      'en': 'Request access to the camera',
      'zh_Hans': '请求访问相机',
      'zh_Hant': '請求訪問相機',
    },
    'acn6ap1q': {
      'en': 'Request access to albums',
      'zh_Hans': '请求访问相册',
      'zh_Hant': '請求訪問相冊',
    },
    'd7y18xy4': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ghsp2jd1': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'mo35jnf7': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'xr0om3ql': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '5sq48osl': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'qja7460h': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'i9p49lhz': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'jqs0scar': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '04ffl31d': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '5o644e0x': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'g9wscny1': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'xngv7je3': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '3y3tygez': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'y5vb29mk': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'jctc9oas': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ywgfzs9u': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '9nrtfjd8': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '6tl3k47p': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'etvusfun': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'qh81x2xg': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'gadk4tmz': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '231zp6sc': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'tvvbnt0u': {
      'en': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
].reduce((a, b) => a..addAll(b));
