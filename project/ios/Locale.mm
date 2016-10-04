#include <Locale.h>
#include "Foundation/NSLocale.h"
#include "Foundation/NSString.h"
#include "Foundation/NSArray.h"

namespace openflLocaleExtension {
	
	const char* getLangCode()
	{
		return [[[NSLocale preferredLanguages] objectAtIndex:0] UTF8String];
	}

}
