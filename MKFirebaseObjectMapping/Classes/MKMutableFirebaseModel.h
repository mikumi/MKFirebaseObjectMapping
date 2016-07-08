//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Jaysquared. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MKFirebaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@class Firebase;
@class FDataSnapshot;

//============================================================
//== Public Interface
//============================================================
@interface MKMutableFirebaseModel : MKFirebaseModel

- (instancetype)initWithFirebaseRef:(Firebase *)firebaseRef;

- (void)registerUpdatedValue:(id)value forKey:(NSString *)key;
- (void)save;

@end

NS_ASSUME_NONNULL_END
