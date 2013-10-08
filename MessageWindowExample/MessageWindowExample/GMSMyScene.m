//
//  GMSMyScene.m
//  MessageWindowExample
//
//  Created by AJ Green on 10/8/13.
//  Copyright (c) 2013 Green Mailbox Studios. All rights reserved.
//

#import "GMSMyScene.h"

@implementation GMSMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        GMSMessageWindow *sampleMessage = [GMSMessageWindow windowWithMessage:@"Ground Control to Major Tom..."
                                                                         font:@"Helvetica"
                                                                     fontSize:18.0f
                                                                     duration:3
                                                                         size:CGSizeMake(300.0f, 100.0f) delegate:self];
        
        sampleMessage.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        [self addChild:sampleMessage];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

#pragma mark -
#pragma mark - Window Delegate
- (void) nextTouched
{
    NSLog(@"Touch from message!");
}

@end
