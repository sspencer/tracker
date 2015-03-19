//
//  Tracker.m
//  Tracker
//
//  Created by Steve Spencer on 3/18/15.
//  Copyright (c) 2015 Steve Spencer. All rights reserved.
//

#import "Tracker.h"
//#import <Realm/Realm.h>
#import "Calendar.h"

@implementation Tracker

+ (void)addCalendar:(NSString *)name complete:(TrackerCompletionHandler)completionCB {

    // create new calendar in background thread
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        Calendar *c = [[Calendar alloc] init];
        c.name = name;

        // Get the default Realm
        RLMRealm *realm = [RLMRealm defaultRealm];

        // Add to Realm with transaction
        [realm beginWriteTransaction];
        [realm addObject:c];
        [realm commitWriteTransaction];

        // callback on main
        dispatch_async(dispatch_get_main_queue(), ^{
            completionCB();
        });
    });

}
@end
