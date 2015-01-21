#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Locale.h"

using namespace openflLocaleExtension;


static value get_lang_code(){
	const char *res = getLangCode();
	return alloc_string(res);
}
DEFINE_PRIM(get_lang_code,0);


extern "C" void Locale_main () {	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (Locale_main);


extern "C" int openflLocaleExtension_register_prims () { return 0; }
