# openfl-locale
Tools for localizing your OpenFL APP.

This is a simple "Localization" class to help you better localize your Lime/OpenFL App.

So far it provides two methods:
* Locale.getLangCode():String
* Locale.getSmartLangCode():String

getLangCode() will return the locale code as the OS informs. It may return in different ways:
Example:
```
en-US
en
es-MX
es-AR
es-419
ja-JP
ja
```

getSmartLangCode() will always return a lowercase two letter lang-code, unless the language is Chinese. In that case, it'll return if it's Sinplified (hans) or Traditional (hant), always in lowercase.
Example:
```
es
en
ja
zh-hans
zh-hant
```

###Simple use Example

```haxe

import extension.locale.Locale;

class SimpleExample
{

  function someFunction() {
  
    var lang1=Locale.getLangCode();
    var lang2=Locale.getSmartLangCode();
    
    trace("Lang code: "+lang1);
    trace("Smart lang code: "+lang2);

  }

}

```

###How to Install

```bash
haxelib install openfl-locale
```

###License

The MIT License (MIT) - [LICENSE.md](LICENSE.md)

Copyright &copy; 2015 SempaiGames (http://www.sempaigames.com)

Author: Federico Bricker
