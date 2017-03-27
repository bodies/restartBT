//
//  AppDelegate.h
//  restartBT
//
//  Created by Jo on 14. 5. 6..
//  Copyright (c) 2014년 Nari Media. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *button;
@property (weak) IBOutlet NSTextField *log;

@end
