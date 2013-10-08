SpriteKitMessageWindow
======================

Simple gaming message presentation ala 8-bit text cutscenes. Simple to showcase SKActions on SKLabelNodes.

1) #import "GMSMessageWindow.h"

2) Create and position your instance and then add to your scene.

```
  GMSMessageWindow *window = [GMSMessageWindow windowWithMessage:aMessageToDisplay
                                                              font:@"helvetica"
                                                          fontSize:20.0f
                                                         fontColor:[UIColor whiteColor]
                                                          duration:1
                                                   backgroundImage:@"messageWindow"
                                                           delegate:nil];
    
    window.position = CGPointMake(CGRectGetMidX(screenRect), CGRectGetMidY(screenRect));
    
    [self addChild:window];
```
    
3) Enjoy!

 
