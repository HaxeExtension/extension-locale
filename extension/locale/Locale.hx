package extension.locale;

class Locale {

	private static var _getLangCode:Void->String =
		#if android
			openfl.utils.JNI.createStaticMethod("localeExtension/Locale", "getLangCode", "()Ljava/lang/String;");
		#elseif (openfl && neko)
			function():String return openfl.system.Capabilities.language;
		#elseif (neko)
			function():String return 'en';
		#elseif (ios || mac)
			cpp.Lib.load("openflLocaleExtension","get_lang_code",0);
		#elseif (html5)
			function():String return js.Browser.window.navigator.language;
		#elseif (flash || openfl)
			function():String return flash.system.Capabilities.language;
		#else
			function():String return 'en';
		#end

	public static function getLangCode():String{
		return StringTools.replace(_getLangCode(),'_','-');
	}


	public static function getSmartLangCode():String {
		var lang=getLangCode().toLowerCase().substring(0,7);
		if(lang.substring(0,2)=='zh'){
			if(lang=='zh-hans' || lang=='zh-cn' || lang=='zh-sg' || lang=='zh-my' || lang=='zh-rcn' || lang=='zh-rsg' || lang=='zh-rmy'){
				return 'zh-hans';
			}
			return 'zh-hant';
		}
		return lang.substring(0,2);
	}


}