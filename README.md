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

http://www.gnu.org/licenses/lgpl.html

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License (LGPL) as published by the Free Software Foundation; either
version 3 of the License, or (at your option) any later version.
  
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.
  
You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.


WebSite: https://github.com/fbricker/openfl-locale | Author: Federico Bricker | Copyright (c) 2015 SempaiGames (http://www.sempaigames.com)
