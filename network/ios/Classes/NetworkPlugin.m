#import "NetworkPlugin.h"
#if __has_include(<network/network-Swift.h>)
#import <network/network-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "network-Swift.h"
#endif

@implementation NetworkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNetworkPlugin registerWithRegistrar:registrar];
}
@end
