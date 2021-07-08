//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "ContactsController.h"

@interface ContactsController()

@property (nonatomic) NSMutableArray *internalContacts;

@end



@implementation ContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)contacts
{
    return self.internalContacts.copy;
}


@end
