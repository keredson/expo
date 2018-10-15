//  Copyright © 2018 650 Industries. All rights reserved.

#import "EXPermissionUserNotificationCenterExpoKit.h"
#import "EXUserNotificationCenter.h"

@implementation EXPermissionUserNotificationCenterExpoKit

+ (const NSArray<Protocol *> *)exportedInterfaces
{
  return @[@protocol(EXUserNotificationsPermissionsCenterInterface)];
}

+ (instancetype)sharedInstance {
  static EXPermissionUserNotificationCenterExpoKit * instance;
  static dispatch_once_t once;
  dispatch_once(&once, ^{
    if (!instance) {
      instance = [[EXPermissionUserNotificationCenterExpoKit alloc] init];
    }
  });
  return instance;
}

- (void)getNotificationSettingsWithCompletionHandler:(void(^)(UNNotificationSettings *settings))completionHandler
{
  [[EXUserNotificationCenter sharedInstance] getNotificationSettingsWithCompletionHandler:completionHandler];
}

- (void)requestAuthorizationWithOptions:(UNAuthorizationOptions)options completionHandler:(void (^)(BOOL granted, NSError *__nullable error))completionHandler
{
  [[EXUserNotificationCenter sharedInstance] requestAuthorizationWithOptions:options completionHandler:completionHandler];
}

@end
