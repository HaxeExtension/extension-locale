package;

import extension.locale.Locale;
import openfl.display.Sprite;


class Main extends Sprite {

	public function new () {

		super ();
		trace ("Hello");

		trace("Lang code: "+Locale.getLangCode());
		trace("Smart lang code: "+Locale.getSmartLangCode());

	}

}
