//
//  NSObject+Notification.m
//  FXCategories
//
//  Created by wei on 15/5/6.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//

#import "NSObject+Notification.h"

@interface NSObject ()

@property(nonatomic, strong) NSMutableArray *notifyList;

@end

@implementation NSObject (Notification)

- (void)postNotify:(NSString *)name {
  [[NSNotificationCenter defaultCenter] postNotificationName:name object:nil];
}

- (void)observeNotify:(NSString *)name {
  if ([self.notifyList containsObject:name]) {
    return;
  }
  [self.notifyList addObject:name];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(onNotification:)
                                               name:name
                                             object:nil];
}

- (void)onNotification:(NSNotification *)notification {
  [self onNotify:notification.name];
}

- (void)onNotify:(NSString *)name {
}

- (void)dealloc {
  for (NSString *notifyName in self.notifyList) {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:notifyName
                                                  object:nil];
  }
  [self.notifyList removeAllObjects];
}

@end
