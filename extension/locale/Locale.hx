package extension.locale;

class Locale {

	private static var _getLangCode:Void->String =
		#if android
			openfl.utils.JNI.createStaticMethod("localeExtension/Locale", "getLangCode", "()Ljava/lang/String;");
		#elseif ios
			cpp.Lib.load("openflLocaleExtension","get_lang_code",0);
		#elseif (flash || openfl)
			function():String return flash.system.Capabilities.language;
		#else
			function():String return null;
		#end

	public static function getLangCode():String{
		var res:String=_getLangCode();
		if (res==null) return null;
		return StringTools.replace(res,'_','-');
	}

}