//
//  NSObject+Notification.h
//  FXCategories
//
//  Created by wei on 15/5/6.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Notification)

/**
 *  @author foxsofter, 15-04-15 11:04:39
 *
 *  @brief  发出通知
 *
 *  @param name 通知名称
 */
- (void)postNotify:(NSString *)name;
/**
 *  @author foxsofter, 15-04-15 11:04:55
 *
 *  @brief  接收通知
 *
 *  @param name 通知名称
 */
- (void)addObserveNotify:(NSString *)name;
/**
 *  @author foxsofter, 15-04-15 11:04:17
 *
 *  @brief  收到通知时处理
 *
 *  @param name 通知名称
 */
- (void)onNotify:(NSString *)name;

@end
