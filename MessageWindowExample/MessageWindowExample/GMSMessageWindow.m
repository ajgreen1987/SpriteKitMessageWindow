//
//  GMSMessageWindow.m
//  AirplaneBomb
//
//  Created by AJ Green on 10/7/13.
//  Copyright (c) 2013 Green Mailbox Studios. All rights reserved.
//

#import "GMSMessageWindow.h"

@implementation GMSMessageWindow

+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize fontColor:(UIColor*)fontColor duration:(CGFloat)duration size:(CGSize)size backgroundColor:(UIColor*)backgroundColor delegate:(id)delegate
{
    GMSMessageWindow *toReturn = [GMSMessageWindow spriteNodeWithColor:backgroundColor size:size];
    
    toReturn.userInteractionEnabled = YES;    
    toReturn.zPosition = 100.0f;
    toReturn.name = @"MESSAGE_NAME";
    toReturn.delegate = delegate;
    
    __block int counter = 0;
    
    NSInteger numberOfCharacters = message.length;
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:font];
    
    label.fontSize = fontSize;
    label.fontColor = fontColor;
    
    SKAction *drawCharacters = [SKAction customActionWithDuration:duration actionBlock:^(SKNode *node, CGFloat elapsedTime) {
        SKLabelNode *label = (SKLabelNode*)node;
        
        if (counter < numberOfCharacters)
        {
            counter++;
            [label setText:[message substringToIndex:counter]];
        }
    }];
    
    [label runAction:drawCharacters];
    
    [toReturn addChild:label];
    
    return toReturn;
}

+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize duration:(CGFloat)duration size:(CGSize)size delegate:(id)delegate
{
    return [GMSMessageWindow windowWithMessage:message font:font fontSize:fontSize fontColor:[UIColor whiteColor] duration:duration size:size backgroundColor:[UIColor blackColor] delegate:delegate];
}

+ (instancetype) windowWithMessage:(NSString*)message font:(NSString*)font fontSize:(CGFloat)fontSize fontColor:(UIColor*)fontColor duration:(CGFloat)duration backgroundImage:(NSString*)backgroundImage delegate:(id)delegate
{
    GMSMessageWindow *toReturn = [GMSMessageWindow spriteNodeWithImageNamed:backgroundImage];
    
    toReturn.userInteractionEnabled = YES;
    toReturn.zPosition = 100.0f;
    toReturn.name = @"MESSAGE_NAME";
    toReturn.delegate = delegate;
    
    __block int counter = 0;
    
    NSInteger numberOfCharacters = message.length;
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:font];
    
    label.fontSize = fontSize;
    label.fontColor = fontColor;
    
    SKAction *drawCharacters = [SKAction customActionWithDuration:duration actionBlock:^(SKNode *node, CGFloat elapsedTime) {
        SKLabelNode *label = (SKLabelNode*)node;
        
        if (counter < numberOfCharacters)
        {
            counter++;
            [label setText:[message substringToIndex:counter]];
        }
    }];
    
    [label runAction:drawCharacters];
    
    [toReturn addChild:label];
    
    SKLabelNode *next = [SKLabelNode labelNodeWithFontNamed:font];
    
    next.text = @"Tap to continue...";
    next.fontSize = fontSize;
    next.fontColor = fontColor;
    next.zPosition = 1;
    next.position = CGPointMake(CGRectGetMaxX(toReturn.frame)-((next.frame.size.width*0.5f)+10), CGRectGetMinY(toReturn.frame)+4.0f);
    
    [toReturn addChild:next];
    
    return toReturn;
}

#pragma mark -
#pragma mark - Touches 
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([self.delegate respondsToSelector:@selector(nextTouched)])
    {
        [self.delegate nextTouched];
    }
}

@end
