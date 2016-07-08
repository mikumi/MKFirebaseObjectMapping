//
// Created by Michael Kuck on 7/7/16.
// Copyright (c) 2016 Jaysquared. All rights reserved.
//

#import "MKFirebaseModel.h"

#import <Firebase/Firebase.h>

//============================================================
//== Private Interface
//============================================================
@interface MKFirebaseModel ()

@property (nonatomic, readwrite) Firebase *firebaseRef;

@end

//============================================================
//== Implementation
//============================================================
@implementation MKFirebaseModel

#pragma mark - Life Cycle

- (instancetype)initWithFirebaseRef:(Firebase *)firebaseRef snapshotValue:(NSDictionary *)snapshotValue
{
    self = [super init];
    if (self) {
        _firebaseRef = firebaseRef;
        // Only subclasses will parse `snapshotValue` object
    }
    return self;
}

- (instancetype)initWithSnapshot:(FDataSnapshot *)snapshot
{
    self = [self initWithFirebaseRef:snapshot.ref snapshotValue:snapshot.value];
    return self;
}

#pragma mark - Public Implementation

- (NSString *)identifier
{
    return self.firebaseRef.key;
}

#pragma mark - NSObject

- (BOOL)isEqual:(id)other
{
    if (other == self) {
        return YES;
    }
    if (!other || ![[other class] isEqual:[self class]]) {
        return NO;
    }

    return [self isEqualToFirebaseModel:other];
}

- (BOOL)isEqualToFirebaseModel:(MKFirebaseModel *)firebaseModel
{
    if (self == firebaseModel) {
        return YES;
    }
    if (firebaseModel == nil) {
        return NO;
    }
#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCSimplifyInspection"
    if (self.identifier != firebaseModel.identifier && ![self.identifier isEqualToString:firebaseModel.identifier]) {
        return NO;
    }
#pragma clang diagnostic pop
    return YES;
}

- (NSUInteger)hash
{
    return [self.identifier hash];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"@<%@: %@>", NSStringFromClass([self class]), self.identifier];
}

@end
