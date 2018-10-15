#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>
#import <EXCore/EXInternalModule.h>

NS_ASSUME_NONNULL_BEGIN

@protocol EXUserNotificationsPermissionsCenterInterface <NSObject>

- (void)getNotificationSettingsWithCompletionHandler:(void(^)(UNNotificationSettings *settings))completionHandler;
- (void)requestAuthorizationWithOptions:(UNAuthorizationOptions)options completionHandler:(void (^)(BOOL granted, NSError *__nullable error))completionHandler;

@end

@interface EXPermissionUserNotificationCenter : NSObject <EXInternalModule, EXUserNotificationsPermissionsCenterInterface>
@end

NS_ASSUME_NONNULL_END
