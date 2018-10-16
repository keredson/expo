#import <Foundation/Foundation.h>

#import <UserNotifications/UserNotifications.h>

NS_ASSUME_NONNULL_BEGIN

@interface EXCategoryAction : NSObject

@property (assign, nonatomic) NSString *actionId;
@property (assign, nonatomic) NSString *actionName;
@property (assign, nonatomic) int flags;
- (UNNotificationAction *) getUNNotificationAction;
+ (instancetype)parseFromArray: (NSArray*) array;

@end

@interface EXCategoryActionWithTextInput : EXCategoryAction

@property (assign, nonatomic) NSString *defaultText;
@property (assign, nonatomic) NSString *buttonName;

@end

NS_ASSUME_NONNULL_END
