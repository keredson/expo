// Copyright 2018-present 650 Industries. All rights reserved.
#import "EXCategoryAction.h"

@implementation EXCategoryAction

+ (instancetype)parseFromArray: (NSArray*) array {
  if ([array count] == 5) {
    return [[EXCategoryActionWithTextInput alloc] initWithArray: array];
  } else if ([array count] == 3) {
    return [[EXCategoryAction alloc] initWithArray: array];
  }
  return nil;
}

- (instancetype)initWithArray: (NSArray*) array {
  if ( self = [super init]) {
    _actionId = array[0];
    _actionName = array[1];
    int optionsInt = [(NSNumber *)array[2] intValue];
    _flags = UNNotificationActionOptionForeground + optionsInt;
  }
  return self;
}

- (UNNotificationAction *) getUNNotificationAction {
  return [UNNotificationAction actionWithIdentifier:self.actionId title:self.actionName options:self.flags];
}

@end

@implementation EXCategoryActionWithTextInput

- (instancetype)initWithArray: (NSArray*) array {
  if ( self = [super initWithArray: array]) {
    _buttonName = array[3];
    _defaultText = array[4];
  }
  return self;
}

- (UNNotificationAction *) getUNNotificationAction {
  return [UNTextInputNotificationAction actionWithIdentifier:self.actionId title:self.actionName options:self.flags textInputButtonTitle:self.buttonName textInputPlaceholder:self.defaultText];
}

@end
