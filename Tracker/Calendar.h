//
//  Calendar.h
//  Tracker
//
//  Created by Steve Spencer on 3/18/15.
//  Copyright (c) 2015 Steve Spencer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Entry.h"

// Calendars model
@interface Calendar : RLMObject

@property NSString      *name;
@property RLMArray<Entry> *entries;

@end

RLM_ARRAY_TYPE(Calendar) // define RLMArray<Calendar>
