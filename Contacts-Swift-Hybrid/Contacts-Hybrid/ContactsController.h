//
//  ContactsController.h
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsController : NSObject

@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
