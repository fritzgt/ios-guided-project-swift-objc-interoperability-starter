//
//  ContactsController.h
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FGTContact;

//NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(ContactsController)//This is to expose a different class name into swift
@interface FGTContactsController : NSObject

@property (nonatomic, readonly, copy, nonnull) NSArray<FGTContact *> *contacts;
@property (nonatomic, readonly) NSInteger contactsCount;

- (nonnull FGTContact *)contactAtIndex:(NSInteger)index;



@end

//NS_ASSUME_NONNULL_END
