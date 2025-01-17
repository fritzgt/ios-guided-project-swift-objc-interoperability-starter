//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by FGT MAC on 7/8/21.
//  Copyright © 2021 Lambda, Inc. All rights reserved.
//

#import "FGTContactsController.h"
#import "Contacts_Hybrid-Swift.h"

@interface FGTContactsController()

@property (nonatomic) NSMutableArray<FGTContact *> *internalContacts;

@end



@implementation FGTContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        FGTContact *contact = [[FGTContact alloc] initWithName:@"Fritz"
                                            relationship:@"Myself"];
        
        [_internalContacts addObject: contact];
    }
    return self;
}

- (NSArray *)contacts
{
    return self.internalContacts.copy;
}

- (FGTContact *)contactAtIndex:(NSInteger)index
{
    return [self.internalContacts objectAtIndex:index];
}

- (NSInteger)contactsCount
{
    return self.internalContacts.count;
}

@end
