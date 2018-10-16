//  Copyright © 2018-present 650 Industries. All rights reserved.

#import <Foundation/Foundation.h>

@interface EXSendNotificationParams : NSObject
@property (strong) NSString *experienceId;
@property (strong) NSDictionary *body;
@property (strong) NSNumber *isRemote;
@property (strong) NSNumber *isFromBackground;
@property (strong) NSString *actionId;
@property (strong) NSString *userText;
- (instancetype)initWithExperienceId:(NSString *)experienceId
                    notificationBody:(NSDictionary *)body
                            isRemote:(NSNumber *)isRemote
                    isFromBackground:(NSNumber *)isFromBackground
                            actionId:(NSString *)actionId
                            userText:(NSString *)userText;
@end
