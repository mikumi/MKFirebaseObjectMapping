//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Michael Kuck. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class FIRDatabaseReference;
@class FIRDataSnapshot;

//============================================================
//== Public Interface
//============================================================
@interface MKFirebaseModel : NSObject

@property (nonatomic, readonly) FIRDatabaseReference *firebaseRef;
@property (nonatomic, readonly) NSString *identifier;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFirebaseRef:(FIRDatabaseReference *)firebaseRef snapshotValue:(NSDictionary *)snapshotValue NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithSnapshot:(FIRDataSnapshot *)snapshot;

@end

NS_ASSUME_NONNULL_END
