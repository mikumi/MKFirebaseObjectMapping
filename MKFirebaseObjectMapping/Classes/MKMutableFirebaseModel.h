//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Michael Kuck. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MKFirebaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@class FIRDatabaseReference;
@class FIRDataSnapshot;

//============================================================
//== Public Interface
//============================================================
@interface MKMutableFirebaseModel : MKFirebaseModel

- (instancetype)initWithFirebaseRef:(FIRDatabaseReference *)firebaseRef;

- (void)registerUpdatedValue:(id)value forKey:(NSString *)key;
- (void)save;

@end

NS_ASSUME_NONNULL_END
