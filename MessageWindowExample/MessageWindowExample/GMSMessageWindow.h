//
//  GMSMessageWindow.h
//  AirplaneBomb
//
//  Created by AJ Green on 10/7/13.
//  Copyright (c) 2013 Green Mailbox Studios. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#define MESSAGE_NAME @"GMSMESSAGEWINDOW"

@protocol GMSMessageWindowDelegate <NSObject>

@optional
- (void) nextTouched;

@end

@interface GMSMessageWindow : SKSpriteNode

@property (nonatomic, assign) id<GMSMessageWindowDelegate> delegate;

+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize duration:(CGFloat)duration size:(CGSize)size delegate:(id)delegate;
+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize fontColor:(UIColor*)fontColor duration:(CGFloat)duration size:(CGSize)size backgroundColor:(UIColor*)backgroundColor delegate:(id)delegate;
+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize fontColor:(UIColor*)fontColor duration:(CGFloat)duration backgroundImage:(NSString*)backgroundImage delegate:(id)delegate;

@end
