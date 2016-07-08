//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Jaysquared. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Firebase;
@class FDataSnapshot;

//============================================================
//== Public Interface
//============================================================
@interface MKFirebaseModel : NSObject

@property (nonatomic, readonly) Firebase *firebaseRef;
@property (nonatomic, readonly) NSString *identifier;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFirebaseRef:(Firebase *)firebaseRef snapshotValue:(NSDictionary *)snapshotValue NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithSnapshot:(FDataSnapshot *)snapshot;

@end

NS_ASSUME_NONNULL_END
