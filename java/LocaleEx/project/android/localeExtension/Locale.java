package localeExtension;

public class Locale {

	public static String getLangCode() {
		return java.util.Locale.getDefault().toString();
	}

}
