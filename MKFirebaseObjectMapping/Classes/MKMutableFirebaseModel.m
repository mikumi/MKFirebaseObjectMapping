//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Jaysquared. All rights reserved.
//

#import "MKMutableFirebaseModel.h"

#import <Firebase/Firebase.h>

//============================================================
//== Private Interface
//============================================================
@interface MKMutableFirebaseModel ()

@property (atomic) NSMutableDictionary<NSString *, id> *updates;

@end

//============================================================
//== Implementation
//============================================================
@implementation MKMutableFirebaseModel

#pragma mark - Life Cycle

- (instancetype)initWithFirebaseRef:(Firebase *)firebaseRef snapshotValue:(NSDictionary *)values
{
    self = [super initWithFirebaseRef:firebaseRef snapshotValue:values];
    if (self) {
        _updates = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (instancetype)initWithFirebaseRef:(Firebase *)firebaseRef
{
    self = [super initWithFirebaseRef:firebaseRef snapshotValue:@{}];
    if (self) {
    }
    return self;
}

#pragma mark - Public Implementation

- (void)registerUpdatedValue:(id)value forKey:(NSString *)key
{
    @synchronized (self.updates) {
        self.updates[key] = value;
    }
}

- (void)save
{
    @synchronized (self.updates) {
        NSDictionary *const updates = self.updates;
        [self writeUpdates:updates];
        [self.updates removeAllObjects];
    }
}

#pragma mark - Private Implementation

- (void)writeUpdates:(NSDictionary *const)dictionary
{
    [self.firebaseRef updateChildValues:dictionary];
}

@end
