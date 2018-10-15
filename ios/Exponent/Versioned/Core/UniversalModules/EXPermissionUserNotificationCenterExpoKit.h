//  Copyright © 2018 650 Industries. All rights reserved.

#import <Foundation/Foundation.h>
#import <EXPermissionUserNotificationCenter.h>
#import <EXInternalModule.h>

NS_ASSUME_NONNULL_BEGIN

@interface EXPermissionUserNotificationCenterExpoKit : NSObject <EXInternalModule, EXUserNotificationsPermissionsCenterInterface>

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
