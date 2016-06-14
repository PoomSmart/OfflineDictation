#import <substrate.h>

extern "C" BOOL AFOfflineDictationCapable();

%hookf(BOOL, AFOfflineDictationCapable)
{
	return YES;
}

%ctor
{
	if ([NSBundle.mainBundle.bundleIdentifier isEqualToString:@"com.apple.Preferences"])
		dlopen("/System/Library/PreferenceBundles/KeyboardSettings.bundle/KeyboardSettings", RTLD_LAZY);
	%init;
}