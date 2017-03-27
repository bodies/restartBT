//
//  AppDelegate.m
//  restartBT
//
//  Created by Jo on 14. 5. 6..
//  Copyright (c) 2014년 Nari Media. All rights reserved.
//

#import "AppDelegate.h"
#import "BTPower.h"

@implementation AppDelegate
{
    BTPower *bt;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.button setEnabled:NO];
    
    bt = [[BTPower alloc] init];
    
    if ([bt isAvailable] == NO) {
        [self error];
    } else {
        if (bt.getState == YES) {
            [self.log setStringValue:@"Turning off..."];
            if ([bt setState:NO] == NO) {
                [self error];
            }
        }
        [self.log setStringValue:@"Turning on..."];
        if ([bt setState:YES] == NO) {
            [self error];
        } else {
            [self.log setStringValue:@"Bluetooth restarted!"];
        }
    }
    
    [self.button setEnabled:YES];
    
}

- (IBAction)done:(id)sender {
    [self.log setStringValue:@"Exiting..."];
    [NSApp terminate:self];
}

- (void)error
{
    [self.log setStringValue:@"ERROR: Can't access to Bluetooth controller."];
}

@end
