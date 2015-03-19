//
//  Entry.h
//  Tracker
//
//  Created by Steve Spencer on 3/18/15.
//  Copyright (c) 2015 Steve Spencer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

// Entry model
@interface Entry : RLMObject

@property NSDate   *date;

@end

RLM_ARRAY_TYPE(Entry) // define RLMArray<Entry>