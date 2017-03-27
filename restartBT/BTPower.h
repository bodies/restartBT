//
//  BTPower.h
//  restartBT
//
//  Created by Jo on 14. 5. 6..
//  Copyright (c) 2014년 Nari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>

@interface BTPower : NSObject

- (BOOL)isAvailable;
- (BOOL)getState;
- (BOOL)setState: (BOOL)state;

@end
