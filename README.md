SpriteKitMessageWindow
======================

Simple gaming message presentation

To Implement:

1) #import "GMSMessageWindow.h"

2) GMSMessageWindow *window = [GMSMessageWindow windowWithMessage:aMessageToDisplay
                                                              font:[GMSAppManager gameFont]
                                                          fontSize:20.0f
                                                         fontColor:[UIColor whiteColor]
                                                          duration:1.5f
                                                   backgroundImage:@"messageWindow"
                                                           delegate:nil];
    
    window.position = CGPointMake(CGRectGetMidX(screenRect), CGRectGetMidY(screenRect));
    
    [self addChild:window];
    
3) Enjoy!

 
