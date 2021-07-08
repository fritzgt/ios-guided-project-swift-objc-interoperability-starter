//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "ContactsController.h"
#import "Contacts_Hybrid-Swift.h"

@interface ContactsController()

@property (nonatomic) NSMutableArray<Contact *> *internalContacts;

@end



@implementation ContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        Contact *contact = [[Contact alloc] initWithName:@"Fritz"
                                            relationship:@"Myself"];
        
        [_internalContacts addObject: contact];
    }
    return self;
}

- (NSArray *)contacts
{
    return self.internalContacts.copy;
}


@end
