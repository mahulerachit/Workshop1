#import "DashboardPlugin.h"
#if __has_include(<dashboard/dashboard-Swift.h>)
#import <dashboard/dashboard-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dashboard-Swift.h"
#endif

@implementation DashboardPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDashboardPlugin registerWithRegistrar:registrar];
}
@end
