//
//  Tracker.h
//  Tracker
//
//  Created by Steve Spencer on 3/18/15.
//  Copyright (c) 2015 Steve Spencer. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TrackerCompletionHandler)(void);
@interface Tracker : NSObject

+ (void)addCalendar:(NSString *)name complete:(TrackerCompletionHandler)completionCB;

@end
