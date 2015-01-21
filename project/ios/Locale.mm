#include <Locale.h>
#import <UIKit/UIKit.h>

namespace openflLocaleExtension {
	
	const char* getLangCode()
	{
		return [[[NSLocale preferredLanguages] objectAtIndex:0] UTF8String];
	}

}
