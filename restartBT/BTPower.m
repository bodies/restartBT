//
//  BTPower.m
//  restartBT
//
//  Created by Jo on 14. 5. 6..
//  Copyright (c) 2014년 Nari. All rights reserved.
//

#import "BTPower.h"

@implementation BTPower


- (BOOL)isAvailable
{
    return IOBluetoothPreferencesAvailable();
}

- (BOOL)getState
{
    return IOBluetoothPreferenceGetControllerPowerState();
}

- (BOOL)setState:(BOOL)state
{
    IOBluetoothPreferenceSetControllerPowerState(state);
    
    sleep(3);
    
    if (self.getState == state) {
        return YES;
    } else {
        return NO;
    }

}

@end
