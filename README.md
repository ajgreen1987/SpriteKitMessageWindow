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

License

```
//The MIT License (MIT)
//Copyright (c) 2013 AJ Green
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of
//this software and associated documentation files (the "Software"), to deal in
//the Software without restriction, including without limitation the rights to
//use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//the Software, and to permit persons to whom the Software is furnished to do so,
//subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```

 
